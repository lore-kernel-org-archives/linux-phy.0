Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E32CAC582
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 07:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+N+Ki4Gbe6EItv2+COjgT8likJPscCW5ZLNYURXTta4=; b=yKpm6k2TRX85ek
	56aeDqySvi9CqwJRXBDPS+GAozHLG5V8vytKb7pVew+3JRJ+KzMiruYMu2AU+vIqEisErHtAEtpaG
	8I1Q6V79ox3VMHNnKk34BP2lXaaNJefA2EB/ZA7HOrwpPZKV4L7jx1fu/4kscnvrnLYRpJH0ZFFrW
	id4fKlCSB/S3c134FfqvwVr4fy7knG9uORpQ/gJImUpxEKl4NyjZqsKpseJur5iKavWUVopFh7e3N
	9RfNvC+zDPO1a9xjAMVaYKsGNhl6q2XqxYM/M3dwpO9X83yEXhlzv2WQ64G8L7LNOZT0hPCPj/++X
	xwvv36EFqsyhn8wbbfPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvW9A-0000000FEJx-3izI;
	Mon, 08 Sep 2025 07:18:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvW7y-0000000FDqf-3als
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 07:17:27 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587JqHeS032431
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 07:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GvkSbj34UnoKQWHt/fvkvc/27oZE/6107qizJVFFrps=; b=CGswnwMYlYbkOmkz
	qSixhdi9F0RQA8Bkp08rMOqS12FzgoXt849zIok/XJ/wnMrDJ7BOHZ2pwNXHmRrm
	GHBL0B7u+wtmsgQlPT18RxJg6vyn9ZsMVoAqLAOFCXpZPyVWo7k3fv5Y0Hbryga/
	YeIjp8kIzM/astALJQfbMoBN+vvnE+A34rjDCuWC1Ve4YKK+ACvL9kzqQwR6ujs6
	VMfEHL8iDK6/JwPVvBrk1DNakvJ0tG8gxGp9HCPMXLyl4dl5kwDyoCZSUMyOJ789
	9l7nVCFYaHA8yH6lggruU3f02SXsugJZiFeKhwxo9CW0VmJx/t07JIV8nUog+CWl
	MRLang==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a3gg2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 07:17:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b604c02383so6875981cf.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 00:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757315844; x=1757920644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GvkSbj34UnoKQWHt/fvkvc/27oZE/6107qizJVFFrps=;
        b=jKgb4aaGghKwKj7g6XShNqrHP+HQvr3vN/Z6M01aGPiviLSMwxdEcn3IY8kB7mklnm
         0pDIH3ITyZ8Y8Ql1qu2ckyvh12SJjCKi7Th6TnKKnDaEHGxt6cuhbLd8HQGRFmLUDdCD
         7VEo/EqNetIGjYKyEBY6u2afCw5XhwWtALXnkVfLqQx98Es2gTbyUDLrCkPnImlnfGkP
         l7m3yU9kcdJPAcYJzT/1ZLF+9n3nmQPjmHVlb0zvBrtb+7hTWgw1WKrAXeNQUhqX/Hlj
         nD9/DK+/n6DDdwyVpWKsjSN8C2f2eR5G5de09L9bPEK92YwKj97Ox4JGSiwe6XVn4wui
         zZVg==
X-Forwarded-Encrypted: i=1; AJvYcCVObq5eHBeqt2mBYNqJpcTRJtODnHb/zAtMYyW/qzDNkSN6F3Of7UTrdvxx5qVUoQ/oxClBMGPgxWw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQYSKMtcJwY+KBQ0gZy0jDz8oibfuE5hSYt5LcSPkVUuqB7GQQ
	OU30BCZKMuhwa9jkY1H4hARmyodqh3eeTqsGVYR1E8NMV/CA6mbIPYmAc7NMeeszDw0u2dtZfXJ
	FCJ/JIDB8YH3lTpqNLgcRLgJAyoQe7OQzMEhS1mCUbW1vKL6tlOGi6FYm/Xbg+muTUzbq
X-Gm-Gg: ASbGncvarPHRxaeh3bAnhiUBCPFAJVd/ULiJCjMVFFvXJa/ycQ33HmEtsRB4HQYJ/JT
	RRYptM0aXTbKAD0q4HR2VTrRaKvEMuuIqiN8CHQPCX2B6plknz6MBg4niqKsnzbtJZYiWlQrY3q
	qICZ5KVpQNZUYl1dHLtZz9pI+qRBNQWF9vzLTssKpBn+1Z+ej337jWIYXnUsXZfEu7Vob7VwKA9
	A1Xs8SyAcuWuwnVfJZKcfLY5PuYpKZLkegUmAhl14gxixmXy6JM4oUDXLIuHHmx+7wugEzSFxQV
	PNBoJOYSgCHX4QV0g1bTbisd3PDCn6qt4ktNv21buwKOTShBkcZK1cGTv/KF/hEu2usdXfweAAP
	Iq2VsrpBCxVGKc6RnzuSs/Q==
X-Received: by 2002:a05:622a:24f:b0:4b5:f066:13d0 with SMTP id d75a77b69052e-4b5f83da97fmr52185581cf.6.1757315844107;
        Mon, 08 Sep 2025 00:17:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcOPchr9S1m9Rz4KxpIgTUicCH7autfYrV7AOUqW7HOqK6Yy6+QlEA3QyM4wlHT62r+3EMIg==
X-Received: by 2002:a05:622a:24f:b0:4b5:f066:13d0 with SMTP id d75a77b69052e-4b5f83da97fmr52185381cf.6.1757315843423;
        Mon, 08 Sep 2025 00:17:23 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62343271613sm5088615a12.23.2025.09.08.00.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 00:17:22 -0700 (PDT)
Message-ID: <9923f086-9deb-4d3f-813c-7d9b94c7dfdb@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 09:17:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68be8306 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=4LzuJVVA2EB8z9vYX0EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: es0ifW1CvgNHOuLfsJhAb3DX0XDSLqfy
X-Proofpoint-ORIG-GUID: es0ifW1CvgNHOuLfsJhAb3DX0XDSLqfy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX+lCU9iVG1rRI
 21AX5KrD4tAqYvu0h34Xxv3/K9bmPfNcntWKtOTVlrOfIDevra5LxixYzAow6T0KsWUqsci13Sz
 x0/jBB4YaA4E2bqm6rkc72xRfr12Uw+cZQLC7eNDAab/o6u2bXXCK1/XGkhgazmd73u6r6z/oq8
 5ol+dS29bI3h+2bbSGf+CQF0H9xPmRTPIE9tyLyjFrQFCC11Nd/PTMucqhaq5kUi95URPR71Cbi
 LQXLU9MSYVD173YWg0ORFA+QCIVlR82L+W3mCAENAKEuKGhDvPTAX6cjpnnYqZkTZ/DmAjrDSBN
 5N1Ghfj4G6psauHAW3+CK9vf5s9O+hZFNwcf3cX2hIKjb24QKjuBEAQQA3h1U2BWOqKSYdq+ILU
 njlr2Hsu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_001726_900040_A8E3101A 
X-CRM114-Status: GOOD (  17.18  )
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

T24gOS84LzI1IDk6MTYgQU0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gT24gOS82LzI1IDEwOjQx
IEFNLCBKZW5zIEdsYXRoZSB3cm90ZToKPj4gT24gMjEuMDguMjUgMTU6NTMsIE5laWwgQXJtc3Ry
b25nIHdyb3RlOgo+Pj4gVGhlIFRoaW5rcGFkIFQxNHMgZW1iZWRzIGEgdHJhbnNwYXJlbnQgNGxh
bmVzIERQLT5IRE1JIHRyYW5zY2VpdmVyCj4+PiBjb25uZWN0ZWQgdG8gdGhlIHRoaXJkIFFNUCBD
b21ibyBQSFkgNCBsYW5lcy4KPj4+Cj4+IFsuLi5dCj4+PiDCoCAuLi4vZHRzL3Fjb20veDFlNzgx
MDAtbGVub3ZvLXRoaW5rcGFkLXQxNHMuZHRzacKgwqDCoCB8IDQ0ICsrKysrKysrKysrKysrKysr
KysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4+IFsuLi5dCj4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTc4MTAwLWxlbm92by10
aGlua3BhZC10MTRzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFlNzgxMDAtbGVu
b3ZvLXRoaW5rcGFkLXQxNHMuZHRzaQo+Pj4gaW5kZXggNGNmNjFjMmEzNGUzMTIzM2IxYWRjOTMz
MzJiY2FiZWYyMmRlM2Y4Ni4uNWI2MmI4YzMxMjM2MzMzNjBmMjQ5ZTNlY2RjOGVhMjNmNDRlOGUw
OSAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MWU3ODEwMC1sZW5v
dm8tdGhpbmtwYWQtdDE0cy5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
eDFlNzgxMDAtbGVub3ZvLXRoaW5rcGFkLXQxNHMuZHRzaQo+PiBbLi4uXQo+Pj4gKyZtZHNzX2Rw
MiB7Cj4+PiArwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4+ICt9Owo+Pj4gKwo+Pj4gKyZtZHNz
X2RwMl9vdXQgewo+Pj4gK8KgwqDCoCBkYXRhLWxhbmVzID0gPDAgMSAyIDM+Owo+Pj4gK307Cj4+
PiArCj4+Cj4+IEhpIE5laWwsCj4+Cj4+IHNob3VsZG4ndCBtZHNzX2RwMl9vdXQgYWxzbyBoYXZl
IHRoZSBsaW5rLWZyZXF1ZW5jaWVzIHByb3BlcnR5Pwo+Pgo+PiArwqAgwqAgbGluay1mcmVxdWVu
Y2llcyA9IC9iaXRzLyA2NCA8MTYyMDAwMDAwMCAyNzAwMDAwMDAwIDU0MDAwMDAwMDAgODEwMDAw
MDAwMD47Cj4+Cj4+IE9yIGlzIGl0IHNvbWV0aGluZyB0aGUgYnJpZGdlIGFscmVhZHkgbmVnb3Rp
YXRlcz8KPiAKPiBObywgaXQgc2VlbXMgbGlrZSBvdXIgZHJpdmVyIGZhbGxzIGJhY2sgdG8gSEJS
MiAoNTR4eCkgZXZlciBzaW5jZSB0aGUKPiBkcml2ZXIgaGFzIGJlZW4gbWFkZSBhd2FyZSBvZiB0
aGlzIHByb3BlcnR5Ogo+IAo+IGNvbW1pdCAzODE1MThhMTY3N2M0OTc0MmE4NWY1MWU4ZjBlODlm
NGI5YjdkMjk3Cj4gQXV0aG9yOiBLdW9nZWUgSHNpZWggPHF1aWNfa2hzaWVoQHF1aWNpbmMuY29t
Pgo+IERhdGU6ICAgVHVlIERlYyAyNyAwOTo0NTowMiAyMDIyIC0wODAwCj4gCj4gICAgIGRybS9t
c20vZHA6IEFkZCBjYXBhYmlsaXR5IHRvIHBhcnNlciBhbmQgcmV0cmlldmUgbWF4IERQIGxpbmsg
c3VwcG9ydGVkIHJhdGUgZnJvbSBsaW5rLWZyZXF1ZW5jaWVzIHByb3BlcnR5IG9mIGRwX291dCBl
bmRwb2ludAo+IAo+IERtaXRyeSwgaXMgdGhlcmUgYW55IHJlYXNvbiBub3QgdG8gYWxsb3cgSEJS
MyBieSBkZWZhdWx0PyBJcyBvdXIgZHAKPiBjb250cm9sbGVyL2RyaXZlciBub3Qgc21hcnQgZW5v
dWdoIG5vdCB0byBhZHZlcnRpc2UgcmF0ZXMgaXQgY2FuJ3QKPiBzdXBwb3J0LCBkdXJpbmcgbmVn
b3RpYXRpb24/CgpJIHN1cHBvc2UgaWYgSSB3YW50IGFuIGFuc3dlciBmcm9tIERtaXRyeSwgaXQg
d291bGQgYmUgZmFpciB0byBhZGQKaGltIHRvIHRoZSByZWNpcGllbnQgbGlzdC4uIGZpeGluZyB0
aGF0CgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
