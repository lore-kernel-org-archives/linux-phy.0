Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11AB0C5B543
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 09:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXb1ZiRRX4/XN9ypjRzFiadnjNm5PcRE9VTaMqC3UAw=; b=Qt/P7TMihSHheh
	vw7U6tWY7VrLT19Po7lxZoVSWI94zAJzUvcFIVRfx5evq6FYz/+C8pnZqdzQ3Q6pjF3gG5zIfv+eS
	GbTlIaTPqAQfkFHKv9UMcN6llfEnPGTtKJOwuvbDfLziDBSpwBqQNt6przbXW/JdKQn9Lnk5Q27pU
	GFMs6YDtKD4QwOxUWaVaYeQGQ8HVE5Dq/eC82sMn7SKadlIMhc7nKMPnnOOIG63ZXBVmpwm3oAq54
	bO0USGlH+C0xhdiaEZTvctV+BSVvjSnneFQr/iarcTypDeqHvXCOUonQeuiaKr9Lbb2YVUAatfKOb
	H9o+hx9LSNojjzO3kSMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkGn-0000000D0gh-3SRC;
	Wed, 04 Jun 2025 09:18:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkDp-0000000CzzZ-0AMv
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 09:15:46 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5547oDn0006342
	for <linux-phy@lists.infradead.org>; Wed, 4 Jun 2025 09:15:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zPPFsiJy+20CJQxcYQxqsy1auSOoSM4WU5ICkQfU8Ik=; b=fYQVe0CsdVilowuY
	OtobuCzUw+CnRbC++SF4DuU9Va9Eu+OTxOXcS1buG/gbWuKVbWLUZNBDZpoRrG61
	VBbThzHVe4eMuCLToa1ss9SwSCZ6IPDpEsyT+oK5Y48SF6Uj8Y8NeAjj59IuzOyb
	1RDxtYkOnmC3Pz3blrt/1yJ94cQec+uH4OQT+kmwD4vXnKFzOULi8ySf5nFsh0L3
	IOuWN5w0wEoTFf9u2Bsk6QmHZZOnszQNkbjsthCIQkgF3aZpM7Zy14lukLAAQdhn
	mbThkmyZurTUl7r4Ce8lCbviLw7gnIFrn2DA0aCedQGL86UXsc2jOm7CS7d5sZUA
	Co5tIw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8swgwr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 09:15:44 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fad9167e4cso79824146d6.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 02:15:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749028543; x=1749633343;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zPPFsiJy+20CJQxcYQxqsy1auSOoSM4WU5ICkQfU8Ik=;
        b=LpIsEdiA0w4bNKLfo1Ki9EiyGSawd5rE7eQpAYmtZM5OVL+0mHEri7aStb1bBNHsZb
         Bcnk71WGRgzSTN1hpQXUvuhFMYqfghVE/KJD3XRXiok+3DlmSe8TUvA3hUD+S7pAxCWX
         zYSqpiATdm6hZd1FAuOSUMxVyJSu/UP/vLlO4rz1w7kqHdDdI3KIwD8HtWuPYeWI8k42
         f/tTuYShlxhjGqCMzbOea8TCTD+IZrxdp5nENieti06A/XC7aBg5hgUW8bgRfUJ+evMv
         pRoHZHEaYCb1E3bH5eHvkxoHqswtekdak7mj1xxR7htjVJg6CyIdENmW2Rb6GW2Bvf/W
         L3VQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQWJsDXS+wuEvAzDnTAFsG5pZFu0vE506GeE0Vv3EnVb5cLkJLKxx0Y7wWyitnB2RZi/VckMi/REo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzK3g1+xodi5MGVtniZrPMmQI7dkeRkyOPEUatRgleYUfII5h1L
	YJ6OH3OwgaqJSAD9pN4rlb+xHv2+fzG9NGj13reOeZVs8uaNfozCL3RP72hARTLisxDo2+zXBKc
	c/XHGR3fLiOgMvZ+F+7S5Yjfe+oHGNKh5//JQPoeFBjA4tbkX9gZxKLfNtKtT3OJcXGNz
X-Gm-Gg: ASbGnctiVZEZS2oM1JNz9ua1HMJ45wjdqvfG1dJ4Uc/1AorxpR7E84TYAwX8rJ3kvrK
	8x9+HeHG02ChaKlI6GmZn+JG+Nk52bB68kw0UW9NpHuVNWVqlXnnJtgJMfdK/tBvmm0imxOC8/9
	4qHPD+dln/Tuwd4I8yp6AbwEtWtAI4/Ys1Vn0f0YMkR5IXgQBzPW4zd1n+dBlninTfJlKragbHP
	5T9duRRjL7Q8l2vsHKab/KFu2T32eE8nXpisg7HjgLTsdxXLWt0G5FwMa4NH31QTSpwjscf9UJo
	05pv5tcsfdDKGNrMpd66S70TM74SKO8taRn3+0JDf+j5DYGBTPH02Rvm+1w1Ds9CzT3TYXIKjUY
	=
X-Received: by 2002:a05:6214:2a48:b0:6f4:b876:5fb8 with SMTP id 6a1803df08f44-6faf6fd1defmr26946286d6.1.1749028542955;
        Wed, 04 Jun 2025 02:15:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAy3lVFCTyFps38PYh4Cu1wvRMN2LoHwLW+6LfbUHP84/5730hlAgclrnqK6LGU+oqn6V+sA==
X-Received: by 2002:a05:6214:2a48:b0:6f4:b876:5fb8 with SMTP id 6a1803df08f44-6faf6fd1defmr26945926d6.1.1749028542461;
        Wed, 04 Jun 2025 02:15:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85b55f88sm21033831fa.55.2025.06.04.02.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 02:15:41 -0700 (PDT)
Date: Wed, 4 Jun 2025 12:15:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <34dnpaz3gl5jctcohh5kbf4arijotpdlxn2eze3oixrausyev3@4qso3qg5zn4t>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
 <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
 <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
X-Proofpoint-ORIG-GUID: ks1aPYU68QRTYqrvsCKaizn9XhTGKo03
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=68400ec0 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=nH4wTwwcQCLCZoaC2lgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ks1aPYU68QRTYqrvsCKaizn9XhTGKo03
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2OSBTYWx0ZWRfX7F5R0dNkTC5f
 mU1hFl7cOHUDSJeWzFTWsdcBweYLRvugjFS0I4GBIDmlj0+X47xb0O0TVPBOzS8QyonxFy8PYRF
 Nc/cDUJW1Pcv1yV2r3J/BOzynbQX5mjQoYHY7Xpk2wF8EnJlNbresP1FZhUosM57mvgSf2xgfjf
 lsEGoA0+5x9k/u94bCNW0JsdE7CganRW/yQcY4gU4LQ7mQu4WGAyMeqro6yXIheHTFF2gNl6kqu
 Eldk8Fy/bu0tm2TX1KIqWBwj+4fNbOrAtSaVhoP7NEStIMeaXttgRojiIp7c5t3EGKBu7a9p/On
 YxZ5HCMVzRPSnRUzOuH9hWXlDPjlbr/gdL/u0pCj1E/E8sjCOYWtfcR1lIIJRopBTx4jBwWMJQ3
 zUW2VjQZwHUKKeufV8AhK2OIJTTMNBilLDUjOyKly5zuYpsC6cIaL8g+hZNieYkDxMY3meHd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_021545_083370_5336F5B9 
X-CRM114-Status: GOOD (  29.32  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKdW4gMDQsIDIwMjUgYXQgMDM6NTg6MzNQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gCj4gT24gNi8zLzIwMjUgOToxMSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+
IE9uIFRodSwgTWF5IDI5LCAyMDI1IGF0IDExOjU0OjE0QU0gKzA4MDAsIFppeXVlIFpoYW5nIHdy
b3RlOgo+ID4gPiBFYWNoIFBDSWUgY29udHJvbGxlciBvbiBzYTg3NzVwIHN1cHBvcnRzICdsaW5r
X2Rvd24ncmVzZXQgb24gaGFyZHdhcmUsCj4gPiA+IGRvY3VtZW50IGl0Lgo+ID4gSSBkb24ndCB0
aGluayBpdCdzIHBvc3NpYmxlIHRvICJzdXBwb3J0IiByZXNldCBpbiBoYXJkd2FyZS4gRWl0aGVy
IGl0Cj4gPiBleGlzdHMgYW5kIGlzIHJvdXRlZCwgb3IgaXQgaXMgbm90Lgo+IAo+IEhpIERtaXRy
eSwKPiAKPiBJIHdpbGwgY2hhbmdlIHRoZSBjb21taXQgbXNnIHRvCj4gJ0VhY2ggUENJZSBjb250
cm9sbGVyIG9uIHNhODc3NXAgaW5jbHVkZXMgJ2xpbmtfZG93bidyZXNldCBvbiBoYXJkd2FyZSwK
PiBkb2N1bWVudCBpdC4nCj4gIlN1cHBvcnRzIiBpbXBsaWVzIHRoYXQgdGhlIFBDSWUgY29udHJv
bGxlciBoYXMgYW4gYWN0aXZlIHJvbGUgaW4gZW5hYmxpbmcKPiBvciBtYW5hZ2luZyB0aGUgcmVz
ZXQgZnVuY3Rpb25hbGl0eeKAlGl0IHN1Z2dlc3RzIHRoYXQgdGhlIGNvbnRyb2xsZXIgaXMgZGVz
aWduZWQKPiB0byBhY2NvbW1vZGF0ZSBvciBmYWNpbGl0YXRlIHRoaXMgZmVhdHVyZS4KPiAgIklu
Y2x1ZGVzIiBzaW1wbHkgc3RhdGVzIHRoYXQgdGhlIHJlc2V0IGZ1bmN0aW9uYWxpdHkgaXMgcHJl
c2VudCBpbiB0aGUKPiBoYXJkd2FyZeKAlGl0IGV4aXN0cywgd2hldGhlciBvciBub3QgaXQncyBh
Y3RpdmVseSBtYW5hZ2VkIG9yIGNvbmZpZ3VyYWJsZS4KPiBTbyBJIHRoaW5rIGNoYW5nZSBpdCB0
byBpbmNsdWRlcyB3aWxsIGJlIGJldHRlci4KPiAKPiBCUnMKPiBaaXl1ZQo+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196aXl1emhhbkBxdWljaW5jLmNvbT4KPiA+ID4g
LS0tCj4gPiA+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVw
LnlhbWwgIHwgMTMgKysrKysrKysrLS0tLQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtc2E4Nzc1cC55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtc2E4Nzc1cC55
YW1sCj4gPiA+IGluZGV4IGUzZmEyMzJkYTJjYS4uODA1MjU4Y2JjZjJmIDEwMDY0NAo+ID4gPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3
NzVwLnlhbWwKPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9xY29tLHBjaWUtc2E4Nzc1cC55YW1sCj4gPiA+IEBAIC02MSwxMSArNjEsMTQgQEAgcHJvcGVy
dGllczoKPiA+ID4gICAgICAgICAtIGNvbnN0OiBnbG9iYWwKPiA+ID4gICAgIHJlc2V0czoKPiA+
ID4gLSAgICBtYXhJdGVtczogMQo+ID4gPiArICAgIG1pbkl0ZW1zOiAxCj4gPiA+ICsgICAgbWF4
SXRlbXM6IDIKPiA+IFNob3VsZG4ndCB3ZSBqdXN0IHVwZGF0ZSB0aGlzIHRvIG1heEl0ZW1zOjIg
LyBtaW5JdGVtczoyIGFuZCBkcm9wCj4gPiBtaW5JdGVtczoxIGZyb20gdGhlIG5leHQgY2xhdXNl
Pwo+IAo+IEhpIERtaXRyeSwKPiAKPiBsaW5rX2Rvd24gcmVzZXQgaXMgb3B0aW9uYWwuIEluIG1h
bnkgb3RoZXIgcGxhdGZvcm1zLCBsaWtlIHNtODU1MAo+IGFuZCB4MWU4MDEwMCwgbGlua19kb3du
IHJlc2V0IGlzIGRvY3VtZW50ZWQgYXMgYSBvcHRpb25hbCByZXNldC4KPiBQQ0llIHdpbGwgd29y
a3MgZmluZSB3aXRob3V0IGxpbmtfZG93biByZXNldC4gU28gSSB0aGluayBzZXR0aW5nIGl0Cj4g
YXMgb3B0aW9uYWwgaXMgYmV0dGVyLgoKWW91IGFyZSBkZXNjcmliaW5nIGEgaGFyZHdhcmUuIEhv
dyBjYW4gYSByZXNldCBiZSBvcHRpb25hbCBpbiB0aGUKX2hhcmR3YXJlXz8gSXQncyBlaXRoZXIg
cm91dGVkIG9yIG5vdC4KCj4gCj4gQlJzCj4gWml5dWUKPiAKPiA+ID4gICAgIHJlc2V0LW5hbWVz
Ogo+ID4gPiArICAgIG1pbkl0ZW1zOiAxCj4gPiA+ICAgICAgIGl0ZW1zOgo+ID4gPiAtICAgICAg
LSBjb25zdDogcGNpCj4gPiA+ICsgICAgICAtIGNvbnN0OiBwY2kgIyBQQ0llIGNvcmUgcmVzZXQK
PiA+ID4gKyAgICAgIC0gY29uc3Q6IGxpbmtfZG93biAjIFBDSWUgbGluayBkb3duIHJlc2V0Cj4g
PiA+ICAgcmVxdWlyZWQ6Cj4gPiA+ICAgICAtIGludGVyY29ubmVjdHMKPiA+ID4gQEAgLTE2MSw4
ICsxNjQsMTAgQEAgZXhhbXBsZXM6Cj4gPiA+ICAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9
IDwmZ2NjIFBDSUVfMF9HRFNDPjsKPiA+ID4gLSAgICAgICAgICAgIHJlc2V0cyA9IDwmZ2NjIEdD
Q19QQ0lFXzBfQkNSPjsKPiA+ID4gLSAgICAgICAgICAgIHJlc2V0LW5hbWVzID0gInBjaSI7Cj4g
PiA+ICsgICAgICAgICAgICByZXNldHMgPSA8JmdjYyBHQ0NfUENJRV8wX0JDUj4sCj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJRV8wX0xJTktfRE9XTl9CQ1I+Owo+ID4g
PiArICAgICAgICAgICAgcmVzZXQtbmFtZXMgPSAicGNpIiwKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgImxpbmtfZG93biI7Cj4gPiA+ICAgICAgICAgICAgICAgcGVyc3QtZ3Bpb3Mg
PSA8JnRsbW0gMiBHUElPX0FDVElWRV9MT1c+Owo+ID4gPiAgICAgICAgICAgICAgIHdha2UtZ3Bp
b3MgPSA8JnRsbW0gMCBHUElPX0FDVElWRV9ISUdIPjsKPiA+ID4gLS0gCj4gPiA+IDIuMzQuMQo+
ID4gPiAKPiA+ID4gCj4gPiA+IC0tIAo+ID4gPiBsaW51eC1waHkgbWFpbGluZyBsaXN0Cj4gPiA+
IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQoKLS0gCldpdGggYmVzdCB3aXNoZXMK
RG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
