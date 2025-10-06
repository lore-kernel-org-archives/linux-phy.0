Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3F97CCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 14:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yuVXYrvOOdXcVMiHxh6Pqi6q7ukKJvWsK6T9CV2TAFc=; b=uKRTIRE9vDOimy
	J4CMuFtbGUNugVFGE6Pq1hR1C4Iu2r0EVMV9Bqrsa449oM8ZgkFZCMg4KWtjwvaQDxCsq3PwwMvXO
	045EzTeM7xYXyi31Su85X33yfL6f0u7DsTfzgoVeieiL0NJrlPLAQIaFBflu2B2bhY5mqNnm11yzu
	QhB/BzEyLuRHUq0DK5j93z8F7ZCRcaNosdrfhzH4RIoqyam1XQZU9BeGqPXifAIgmpR/qrsCOna5B
	9cSDj6IjOqWG3kl1rXEksrLisHalUbSDzkd0B0UEyl1XtRCI4OMQGoc4eGNJ6SGZyVCuYpnOK8aiy
	AJp20baLnlToEcxeHi9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5mc3-00000000E8l-2se1;
	Mon, 06 Oct 2025 14:54:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5mc1-00000000E7x-2Bnl
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 14:54:54 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961cmeX029291
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 14:54:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cv6U17bN1wDjwnzmSzJzW9obeBLdedq7KNTbC1B9CjM=; b=TxySLBFB0+PVd4Z8
	sL3+HQ8DR3L0o4fPJeyJNlYF4TIJPPi/1dFl2JHCyQ1F4bx7h/+ChZkXrXwNtMVx
	As2Q/Oovan6s9xsP+NPtP2YccEdZbPSCIuWqqZNLW4WL2yk6MD8fn0X4j/6ygkko
	g7A0VsxwQyWvr9Y2imRDozOQZETaa7g7o3e0BMNhgZ7e32zkX0Z4VKsp+1tUVZS+
	N0/I1REPW9IMt9BDyhuM2ptfG7rEKnMKtxy5f+xp4EBHwP0D9/fooPGtgG9wLNCD
	2KL3tAiNaJ2094TH3W2XAlpK2TKQNCc41P2GHALHLOyHNMciOFizNGb78XeV9GIh
	4OXarw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9dvcgc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 14:54:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ded29823ebso8656491cf.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 07:54:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759762492; x=1760367292;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cv6U17bN1wDjwnzmSzJzW9obeBLdedq7KNTbC1B9CjM=;
        b=hMWj6oleICCop5PcAEWdo/M53GoEzdbqtqf2Lrw4KLqNRuTc/lamCIs0Aibn4/6NOX
         ucbE6mv/od6IB23LD2hKHaWE8YTqJUYTjvXSZXt9jtzVhbKYFVzynzLG4Q3TvN4DdDLT
         4AqnUG7Jbi9PM4o4b7w8MaKMpo0qGICtGhuGghn5Tk13F2tw0oPQ7/91KS1JXCLjcCLf
         2Z0l8nD7z1zBNJEzSXAHF/MmJrqWKBlWFaQq5F5NxsgJ1QOqWpov2GqoUnVe3pJLVYje
         pcAXhwNKPoDJH7oaR4rQgbbXE89BD1d/ypHJxMZL+FkscMXbdQcf31bKWywhBUmxOLZj
         1K7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdkwt+uRVXj5Olz67bDu0A42yPRNFTbTg6stBReYvNJWMhwat88I29Ny/6XW+NH5Xyq19mlyI8Wng=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0jLmv2fypDkIQDcYk37MHp6MW2LFzuvFqp7nU/mUrsRdym3PK
	F0DvcruVi4NJslYlsCwR6OofuY1JHFhmx8aVn/iqmOSu3s7fspA7LLETtje+vF2DWtQCqhnZPG/
	F0Ek4MCd+ybqdU6vAb/ivAhmiu7SjI7mmdiyNjiLMzeTy5x2JBoV7t+PvaDqXLo0G02wh
X-Gm-Gg: ASbGncvg6uPPkJhJggeP7l0HU2ORk2pOZvG2MZFC9pmO3WzxUqOfujdU4r86qRcuho4
	HSdWPAjWJscEM5BaL7OZNjyQiZN4Up0SwviTrqMB6eN5t7gMNJvg1hLmJYTcOqoNSWIfkWWHbh3
	L9wU7v61eoad3PgLzzJWIJmWHNzdRH+UmgXZhQEX0Ex3wfDDgzf/dh9vAueakKnEJZq2WhvoIZ7
	bIe52MwV/d/H20me1z6OZ/V3WnfL5vB53GqSzZ2Kt3WQvvDE/gsGAQuju8FZvHToPD1v5UX++Wy
	PwLACWFKcG+EdF1Tfn9SkAorI/SYlX12idSKamwaEzGrfPmAw3nP4Ltkci1jB2Ji5F4vLZCd0pJ
	e3FCaUB6iA+0PA9Clm12CMn9cR38=
X-Received: by 2002:ac8:5f91:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e576a4b14emr103259561cf.4.1759762491522;
        Mon, 06 Oct 2025 07:54:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMZp8szVGdIhRKHbYb8bm1B08qHNDYnBZVyPSbgnUlfxnyi7acZND4gc1ucbmgXBp9HciSEQ==
X-Received: by 2002:ac8:5f91:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e576a4b14emr103259291cf.4.1759762490824;
        Mon, 06 Oct 2025 07:54:50 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa035sm1134251266b.15.2025.10.06.07.54.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 07:54:50 -0700 (PDT)
Message-ID: <8e871a21-5f1b-44c7-ae53-733c91e34471@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 16:54:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
 <4bb1c10d-b8fe-485e-b4aa-faa43033be76@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4bb1c10d-b8fe-485e-b4aa-faa43033be76@linaro.org>
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e3d83d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=TjnOBVPGGSnGA_jfKqUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 2r6gzGzjWwY093ZvHNcJ5HrrXNTxhS5P
X-Proofpoint-ORIG-GUID: 2r6gzGzjWwY093ZvHNcJ5HrrXNTxhS5P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX13hlPPwrrNNH
 iddxcqrRp+tlPiS4jeE83KiqWZTdD9zYuS1AdCOlGgNvFhaBUqVBgN1Gt6wM3zfwPq1398xcHTy
 rhvea3VajjVASzLpenPBe5Bki/8vs0SRfB24iw7h/UvqjToJcAIba0ydMicMWrlWh3vWh4Tz791
 5KP7yOmTqzoufzEMeXKKMRpeWhxr6Okq6pW/MCOhhd8D8Zu4iyXPsqgmkRCuU0Gq18a/8vLcI2A
 EPIJqjLa0C1QtZa4Vgs2gKnsTVqp/sndxR4Dm2tPOXLryxD9zmCFp95TxxVuQfF5I0P0gMKYZWY
 udjoCdZCmuH7NwebJpz2iBUeuwrlIPuhI4HU/Nfa9404SsfyrQCMYeR8bJGBSiiYARQzoFi2FbI
 xr0HZRJh6SceOZMG9C1g3QkdOTKzew==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_075453_565502_2EE42A93 
X-CRM114-Status: GOOD (  15.43  )
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

T24gMTAvNi8yNSAyOjUwIFBNLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBPbiAxMC82LzI1IDEy
OjA4LCBLb25yYWQgRHliY2lvIHdyb3RlOgo+PiBPbiA5LzMwLzI1IDk6MzkgQU0sIE5laWwgQXJt
c3Ryb25nIHdyb3RlOgo+Pj4gVGhlIFFNUCBVU0IzL0RQIENvbWJvIFBIWSBob3N0cyBhbiBVU0Iz
IHBoeSBhbmQgYSBEUCBQSFkgb24gdG9wCj4+PiBvZiBhIGNvbWJvIGdsdWUgdG8gcm91dGUgZWl0
aGVyIGxhbmVzIHRvIHRoZSA0IHNoYXJlZCBwaHlzaWNhbCBsYW5lcy4KPj4+Cj4+PiBUaGUgcm91
dGluZyBvZiB0aGUgbGFuZXMgY2FuIGJlOgo+Pj4gLSAyIERQICsgMiBVU0IzCj4+PiAtIDQgRFAK
Pj4+IC0gMiBVU0IzCj4+Pgo+Pj4gR2V0IHRoZSBsYW5lcyBtYXBwaW5nIGZyb20gRFQgYW5kIHN0
b3AgcmVnaXN0ZXJpbmcgdGhlIFVTQi1DCj4+PiBtdXhlcyBpbiBmYXZvciBvZiBhIHN0YXRpYyBt
b2RlIGFuZCBvcmllbnRhdGlvbiBkZXRlbWluZWQKPj4+IGJ5IHRoZSBsYW5lcyBtYXBwaW5nLgo+
Pj4KPj4+IFRoaXMgYWxsb3dzIHN1cHBvcnRpbmcgYm9hcmRzIHdpdGggZGlyZWN0IGNvbm5lY3Rp
b24gb2YgVVNCMyBhbmQKPj4+IERpc3BsYXlQb3J0IGxhbmVzIHRvIHRoZSBRTVAgQ29tYm8gUEhZ
IGxhbmVzLCBub3QgdXNpbmcgdGhlCj4+PiBVU0ItQyBBbHRtb2RlIGZlYXR1cmUuCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+
Cj4+PiAtLS0KClsuLi5dCj4+PiArwqDCoMKgIHsgMiwgVFlQRUNfT1JJRU5UQVRJT05fTk9STUFM
LCB7IDMsIDIgfX0sCj4+PiArwqDCoMKgIHsgMiwgVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSwg
eyAwLCAxIH19LAo+Pj4gK8KgwqDCoCB7IDQsIFRZUEVDX09SSUVOVEFUSU9OX05PUk1BTCwgeyAz
LCAyLCAxLCAwIH19LAo+Pj4gK8KgwqDCoCB7IDQsIFRZUEVDX09SSUVOVEFUSU9OX1JFVkVSU0Us
IHsgMCwgMSwgMiwgMyB9fSwKPj4KPj4gV291bGQgaXQgYmUgdG9vIGNoZWVzeSB0byBjaGVjayBv
cmllbnRhdGlvbiBiYXNlZCBsaWtlOgo+Pgo+PiBzdGF0aWMgYm9vbCBxbXBwaHlfbWFwcGluZ19v
cmllbnRfZmxpcHBlZCh1MzIgKmRhdGFfbGFuZXMpCj4+IHsKPj4gwqDCoMKgwqByZXR1cm4gZGF0
YV9sYW5lc1swXSA9PSAwOwo+PiB9Cj4+Cj4+ID8KPiAKPiBEbyB3ZSB3YW50IGEgcHJvcGVyIGNo
ZWNrIG9mIHRoZSBwcm9wZXJ0eSBjb250ZW50IG9yIHNvbWUgcmFuZG9tIGNoZWNrID8KPiBTb3Jy
eSBJIHByZWZlciBzb21ldGhpbmcgZm9ybWFsLCBzaW5jZSBwZXJoYXBzIHNvbWV0aW1lIHdlIHdp
bGwgaGF2ZQo+IGEgZnVsbCBsYW5lcyByZW1hcHBpbmcgYXZhaWxhYmxlIGluc3RlYWQgb2YganVz
dCBvcmllbnRhdGlvbiBhbmQgaWYKPiB3ZSBoYXZlIHNvbWUgcmFuZG9tIGlucHV0IGl0IHdpbGwg
ZXhwbG9zZS4uLgoKV2VsbCB5b3UgYWxyZWFkeSBsaXN0IGFsbCBhY2NlcHRlZCBwcm9wZXJ0aWVz
LiBUaGlzIHdvdWxkIG9ubHkgKHNsaWdodGx5KQpsaW1pdCB0aGUgYW1vdW50IG9mIHN0b3JhZ2Ug
dGhlIGRhdGEgdGhhdCB5b3UgKnRoZW4gYXNzb2NpYXRlIHdpdGggaXQqCm9jY3VwaWVzLCBidXQg
SSdtIG5vdCBnb2luZyB0byBkaWUgb24gdGhpcyBoaWxsLCBkbyBhcyB5b3UgcHJlZmVyLi4KCktv
bnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
