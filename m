Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B344FCA5FED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 04:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=018hE1ua5J1V0UN6zxIltd6dy3/EZJtUzb6zIbRn9IA=; b=L+uCMM++5ncOTD
	KV1OT9UT+/AS/e+4NrOfgLWPFU8jZBZU/V0PHOyASB7/8Y+4ZrCPu3GceM0/358cStPqhXVxDuZVO
	phAZXJReQ+dhZ7JFGP4IAZieNj8kdFJCfx58HnmSCtN8ek6mj2/I+D6r28bzeemcZAvW/2Ov9VkjH
	M6XS7s/mxBijJ0jXGIg4x12pkcGPxfNqXFgdQq4Ng8cjQRqbpjE4Z4iwaxch/QL3QdGQvYrn/ctUP
	6Li5PiysRA01mDV8CJA3aSg3RyhY4zoQxlc0yHyEjZ+bXipbWcLmMFsDO7y6mbmUAk1AfJ2LCi0Hv
	eAjouKH9RCz06T2iQ6Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF1sa-00000005SKO-1nOh;
	Fri, 09 Oct 2026 04:06:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF1sX-00000005SK0-2iuJ
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 04:06:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6993HSK4966595
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 04:06:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L0LWV9Ad6BmiCjtUVa4F5rZTvC987knzXRnL2tmi8kc=; b=EeyisCkwjoTDBjeR
	Cy/Fv43vFxWHfYx/BO5fBnjabBJ8IYLWTqnhKJEfBJRZYV1+DHZz1U7ctUxJ2nNq
	aV8A0HhvqpQq9L7vijg8S7kKX32s72dG7Sgj0YitoFtD7Jik/gZDbymPU7bQtMK6
	1cPEuRCyY8KAIkB/td8vrtB3Z91Zq+v/bh+mpB9K71isE+uByJcPbxLfkA+0y0OA
	iCHPMvDPqtBvDTZ8E7F3l6je5N+pUp+j3Vjqm1/LPy3ISkziZ6PzN1Sky3Xah518
	OyGgQDWU6Xw/QecxjFLcv2LA6SyOcY0+iG9NxGQNLF19Y6PRuRdMa8zCPJWoxiqz
	9lNsig==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fyj1rpu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:06:40 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3a8041a532eso5101520a91.3
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 21:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791518799; x=1792123599; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L0LWV9Ad6BmiCjtUVa4F5rZTvC987knzXRnL2tmi8kc=;
        b=VDGPrlXl9qTwSuwRAbzvzgujr6YfIVWRb09h7G5p19lkesqJl/mgRnnngm2GfwzUGT
         zGMU+RfzmhFWrJ5JGhcVKPzTdc1BnEaHpCFUDuG/sFs6nIlqoOM4NsAyy6SEXuJ7CRLJ
         vjEcGByIqRfcLxHop6/Smpy5u2KxUVWh/CGVbDdFTBt7XA0BJ3/3TAZe0sMBpr6uAX7K
         RLIDaaQqUqb6lPs5kbFSDZFxcwauNPtEpYl6/Xd9tGye/DUxNlE67zjN8NfG04DJN6zZ
         A+5giM16DXR1Pl/5DwQuZaGtSN+8ehqyfH61j8EFluVW/x4X1cycHUe6k996aN3P3H3T
         u/gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791518799; x=1792123599;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L0LWV9Ad6BmiCjtUVa4F5rZTvC987knzXRnL2tmi8kc=;
        b=zzdEksM2/muvJaS9iTXodOe5FRJHy0yAhCje8u2HuNT6Qp3LOkhDyZMOLVGqiWg507
         xAX5NanB15Iq4reB6SHmaKM5yFMc32iTjm8CtLUlLaZYJzXp5fcH4TSdzA03NE05QIp4
         QhFq8WP8SxYzH78qQcoUtnQT3yO10OgckeuTrZVBmMEDQpLWk+pR5H38jhua2wv7eryM
         EF1895cYmA4waAJaAb38Dk6/r3aF6O3DCnrs40WvO22qO1N/XeKqRUnvbNvNlZhhbitv
         TIUj1n2CQUcWLDkY7SRIgdH27LLoRRMc44cyvkNc+gURDeSg+CwzQWng2GNBeAOdyC8O
         66AQ==
X-Forwarded-Encrypted: i=1; AKwUvBzlRK8FSDBVhKdfkRtZuPQcaknmCOPyhwxGJ8p11IyZvREL02ii18Pdbkv6BK8lMwWkru/2ypjJPzs=@lists.infradead.org
X-Gm-Message-State: AFq9FYJKWyRwwtp/VVpNhPtfzpF7OcDcrqg5/okBxqtHPKhlE6haYN+i
	BIOEcBWooLTS1L7Dn+ufIwO8ZZdfQ7cBA/CaqAv01lejgC3xFyV/LHQtkwPy6ZaIDai7rQ02xPn
	8jCgh1HAA+2ehVz4Ail4svGsydvrLaDganONUpQ9fy4Gb89gmxWzfSYgRHc6oRRgAQ4LZ
X-Gm-Gg: AYBFou1Pt1YUkPVJDFN1dBT3VnLsCOOtvZfvZu0cVcfPCAbpBQRYBNf9l+pCK4oUMyK
	+Th8iJhYOKZIgZOQ4kKsyKb9EfskR1aE6H1H/m6JB3T4HzxXZjwtLzkZZDRSxD3JXaVmQQEEIcg
	o2+vSArDjn0ySB0HC1O3jI1nwqgOubl76Eh6xk/KAtiaumVCJeGxbtx2EHDHJiCPgqSMn1r7kKB
	BPZyYJGiJNzGTGcX7tQew7Ci1jlOkMMUHd9Co4G6lkQysrp48eVrl5Ao0jxp63dlxedjJtEZsbQ
	7JVpwWCQGoA6ZeukDgzwVvwXUtwYGq1Tv+/UgBo4GmJQCsTmXMHKEyvwzCmRCgdAKui67oQtHwO
	NNwYQFUioE3vkUaQV5Wv6nXHHeqeNX3CgCTGW6pLMT9wOj+itUNHitrowIlXphPc=
X-Received: by 2002:a17:90a:d006:b0:3a8:6a04:80ef with SMTP id 98e67ed59e1d1-3ab3a2901c2mr662425a91.6.1791518798882;
        Thu, 08 Oct 2026 21:06:38 -0700 (PDT)
X-Received: by 2002:a17:90a:d006:b0:3a8:6a04:80ef with SMTP id 98e67ed59e1d1-3ab3a2901c2mr662396a91.6.1791518798366;
        Thu, 08 Oct 2026 21:06:38 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab37139b59sm1611384a91.13.2026.10.08.21.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Oct 2026 21:06:37 -0700 (PDT)
Message-ID: <d30d2b5b-0034-47f0-8e93-9abde4dad118@oss.qualcomm.com>
Date: Fri, 9 Oct 2026 12:06:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 11/12] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-11-b2c583ef50e0@oss.qualcomm.com>
 <CAFEp6-1Voqn3yFse5t82UOX7MVafkhL466BkEDSLVRH8OK132g@mail.gmail.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <CAFEp6-1Voqn3yFse5t82UOX7MVafkhL466BkEDSLVRH8OK132g@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=BfpNQbt2 c=1 sm=1 tr=0 ts=6ac86850 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=GUC6nXMZ9ruFzsaAOnwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MzKJmSDm8ZNREGN314gosJw5X8m5xQ2W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAxNiBTYWx0ZWRfX3les40SrJgpb
 ZlDh3zQpBYiJ8ylK8pHRTEF3W+UaHo66UoD3Sk3rpyMvbnyomwgAZDVjcCEUZ+AflWsu8KYJkQm
 7QDbKrs0mtiGpzIP/xWUbSTwkJsSAekpycjG/eGfuFTmUprdBsjHntqNMNvyCx6q1Mu+R6y/VTB
 l3WUvCRyOOx9VAKl1joa9etGF2ntV1SwGQE/ykI5ztpmeke2jTQDYKI2F8BFurgDizq7t8Wob+/
 JXwdU7ArQjVnD3MX6HOaOg/9GaM1y+osdIXCgj+xGwWpH2yo9n3zPQ5v8quI0uU4lz9Eds1F0N5
 QTrAPqXHoKV/+i7D30oag84VgLzL8/FIel5P+GMtb1fUxQz7w/rgzCmo7OEDTRgkdPIaP6bHePm
 PU/NPvgHDccLDlWooBdJhsJwDqOns12a+ia2Ew/S9DspdyLJVIbHhDR9p/mtpRypJj7BPPTClKt
 Bd9IgIietjCZey8H7Nw==
X-Proofpoint-GUID: MzKJmSDm8ZNREGN314gosJw5X8m5xQ2W
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAxNiBTYWx0ZWRfXyzFinDZqElVl
 b4cP5N4GtVnFvN36FdpkfdAEW8Xyhkn8Qp0m8lDBX/SC3Bpv2o5MQFr8uLpvsd+zyUYeEbixKRz
 5X/32YeFgrj4sO2cIabxzx7B3rBDKLY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_02,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610020000
 definitions=main-2610090016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_210641_833912_97A963B9 
X-CRM114-Status: GOOD (  20.06  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTAvOS8yMDI2IDEyOjE2IEFNLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gT24gVGh1LCBPY3Qg
OCwgMjAyNiBhdCA5OjE04oCvQU0gSGFuZ3hpYW5nIE1hCj4gPGhhbmd4aWFuZy5tYUBvc3MucXVh
bGNvbW0uY29tPiB3cm90ZToKPj4KPj4gQWRkIHRoZSB0aHJlZSBDYW1lcmEgQ29udHJvbCBJbnRl
cmZhY2UgKENDSSkgY29udHJvbGxlcnMgcHJlc2VudCBvbiB0aGUKPj4gS2FhbmFwYWxpIFNvQy4g
RWFjaCBjb250cm9sbGVyIHByb3ZpZGVzIHR3byBJMkMgaG9zdHMgdXNlZCBmb3IgY2FtZXJhCj4+
IHNlbnNvciBjb250cm9sLCBzbyBkZWZpbmUgdGhlIGNvbnRyb2xsZXIgbm9kZXMgYW5kIHRoZWly
IHBpbmN0cmwgc3RhdGVzLgo+Pgo+PiBUaGUgZmlyc3QgYnVzIGhhcyB0d28gQ0NJIGJ1cyBtYXN0
ZXIgcGlub3V0czoKPj4gY2NpX2kyY19zZGEwID0gZ3BpbzEwOQo+PiBjY2lfaTJjX3NjbDAgPSBn
cGlvMTEwCj4+Cj4+IGNjaV9pMmNfc2RhMSA9IGdwaW8xMTEKPj4gY2NpX2kyY19zY2wxID0gZ3Bp
bzExMgo+Pgo+PiBUaGUgc2Vjb25kIGJ1cyBoYXMgdHdvIENDSSBidXMgbWFzdGVyIHBpbm91dHM6
Cj4+IGNjaV9pMmNfc2RhMyA9IGdwaW8xMTMKPj4gY2NpX2kyY19zY2wzID0gZ3BpbzExNAo+Pgo+
PiBjY2lfaTJjX3NkYTQgPSBncGlvMTA3Cj4+IGNjaV9pMmNfc2NsNCA9IGdwaW8xNjAKPj4KPj4g
VGhlIHRoaXJkIGJ1cyBoYXMgdHdvIENDSSBidXMgbWFzdGVyIHBpbm91dHM6Cj4+IGNjaV9pMmNf
c2RhNSA9IGdwaW8xMDgKPj4gY2NpX2kyY19zY2w1ID0gZ3BpbzE0OQo+Pgo+PiBjY2lfaTJjX3Nk
YTYgPSBncGlvMTE1Cj4+IGNjaV9pMmNfc2NsNiA9IGdwaW8xMTYKPj4KPj4gUmV2aWV3ZWQtYnk6
IFZsYWRpbWlyIFphcG9sc2tpeSA8dmxhZGltaXIuemFwb2xza2l5QGxpbmFyby5vcmc+Cj4+IFNp
Z25lZC1vZmYtYnk6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+
Cj4+IC0tLQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9rYWFuYXBhbGkuZHRzaSB8IDMw
MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAz
MDMgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2thYW5hcGFsaS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5k
dHNpCj4+IGluZGV4IDdlNTEwNjg2NWU3ZS4uNzEwYWYwNTk3YWFhIDEwMDY0NAo+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpCj4+IEBAIC0zNzQ5LDYgKzM3NDksMTE3IEBA
IHBvcnRANSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+PiAgICAgICAgICAgICAg
ICAgIH07Cj4+Cj4+ICsgICAgICAgICAgICAgICBjY2kwOiBjY2lAOTQxYjAwMCB7Cj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicWNvbSxrYWFuYXBhbGktY2NpIiwgInFj
b20sbXNtODk5Ni1jY2kiOwo+PiArICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4
MDk0MWIwMDAgMHgwIDB4MTAwMD47Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDQyNiBJUlFfVFlQRV9FREdFX1JJU0lORz47Cj4+ICsKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjYW1jYyBDQU1fQ0NfQ0FNX1RPUF9BSEJf
Q0xLPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjYW1jYyBDQU1fQ0Nf
Q0NJXzBfQ0xLPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYWhi
IiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2NpIjsKPj4gKwo+
PiArICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZjYW1jYyBDQU1fQ0Nf
VElUQU5fVE9QX0dEU0M+Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwt
MCA9IDwmY2NpMF9pMmMwX2RlZmF1bHQgJmNjaTBfaTJjMV9kZWZhdWx0PjsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgcGluY3RybC0xID0gPCZjY2kwX2kyYzBfc2xlZXAgJmNjaTBfaTJjMV9z
bGVlcD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCIsICJzbGVlcCI7Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8MT47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+
PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2NpMF9pMmMwOiBpMmMtYnVzQDAgewo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwMD47Cj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIH07Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2NpMF9pMmMx
OiBpMmMtYnVzQDEgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwx
PjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8
MTAwMDAwMD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8MT47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMg
PSA8MD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgICAgICAgICB9
Owo+PiArCj4+ICsgICAgICAgICAgICAgICBjY2kxOiBjY2lAOTQxYzAwMCB7Cj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicWNvbSxrYWFuYXBhbGktY2NpIiwgInFjb20s
bXNtODk5Ni1jY2kiOwo+PiArICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4MDk0
MWMwMDAgMHgwIDB4MTAwMD47Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDQyNyBJUlFfVFlQRV9FREdFX1JJU0lORz47Cj4+ICsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjYW1jYyBDQU1fQ0NfQ0FNX1RPUF9BSEJfQ0xL
PiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjYW1jYyBDQU1fQ0NfQ0NJ
XzFfQ0xLPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYWhiIiwK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2NpIjsKPj4gKwo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZjYW1jYyBDQU1fQ0NfVElU
QU5fVE9QX0dEU0M+Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9
IDwmY2NpMV9pMmMwX2RlZmF1bHQgJmNjaTFfaTJjMV9kZWZhdWx0PjsKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgcGluY3RybC0xID0gPCZjY2kxX2kyYzBfc2xlZXAgJmNjaTFfaTJjMV9zbGVl
cD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIs
ICJzbGVlcCI7Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMg
PSA8MT47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+PiAr
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY2NpMV9pMmMwOiBpMmMtYnVzQDAgewo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwMD47Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2NpMV9pMmMxOiBp
MmMtYnVzQDEgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTAw
MDAwMD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMg
PSA8MT47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8
MD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgICAgICAgICB9Owo+
PiArCj4+ICsgICAgICAgICAgICAgICBjY2kyOiBjY2lAOTQxZDAwMCB7Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicWNvbSxrYWFuYXBhbGktY2NpIiwgInFjb20sbXNt
ODk5Ni1jY2kiOwo+PiArICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4MDk0MWQw
MDAgMHgwIDB4MTAwMD47Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDQyOCBJUlFfVFlQRV9FREdFX1JJU0lORz47Cj4+ICsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjYW1jYyBDQU1fQ0NfQ0FNX1RPUF9BSEJfQ0xLPiwK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjYW1jYyBDQU1fQ0NfQ0NJXzJf
Q0xLPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYWhiIiwKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2NpIjsKPj4gKwo+PiArICAg
ICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZjYW1jYyBDQU1fQ0NfVElUQU5f
VE9QX0dEU0M+Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwm
Y2NpMl9pMmMwX2RlZmF1bHQgJmNjaTJfaTJjMV9kZWZhdWx0PjsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcGluY3RybC0xID0gPCZjY2kyX2kyYzBfc2xlZXAgJmNjaTJfaTJjMV9zbGVlcD47
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJz
bGVlcCI7Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+PiArCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICsKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgY2NpMl9pMmMwOiBpMmMtYnVzQDAgewo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwMD47Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgIH07Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2NpMl9pMmMxOiBpMmMt
YnVzQDEgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAw
MD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgICAgICAgICB9Owo+PiAr
Cj4+ICAgICAgICAgICAgICAgICAgY3NpcGh5MDogcGh5QDk1MjMwMDAgewo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJxY29tLGthYW5hcGFsaS1jc2kyLXBoeSI7Cj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4MDk1MjMwMDAgMHgwIDB4MjAw
MD47Cj4+IEBAIC00NDU5LDYgKzQ1NzAsMTk4IEBAIHRsbW06IHBpbmN0cmxAZjEwMDAwMCB7Cj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAjaW50ZXJydXB0LWNlbGxzID0gPDI+Owo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgd2FrZXVwLXBhcmVudCA9IDwmcGRjPjsKPj4KPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgY2NpMF9pMmMwX2RlZmF1bHQ6IGNjaTAtaTJjMC1kZWZhdWx0LXN0
YXRlIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzY2wtcGlucyB7Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gImdwaW8xMTAiOwo+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnVuY3Rpb24gPSAiY2Np
X2kyY19zY2wiOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHJp
dmUtc3RyZW5ndGggPSA8Mj47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBiaWFzLXB1bGwtdXA7Cj4gCj4gQSBnZW5lcmFsIGNvbW1lbnQgb24gdGhlIENDSSBEVFMg
cGF0Y2hlczogd2h5IGFyZSB0aGUgcHVsbC11cHMgZW5hYmxlZAo+IGhlcmUgKGZvciBTQ0wvU0RB
KT8gRG8gd2UgZXhwZWN0IGJvYXJkcyB0byBsYWNrIHRoZSBleHRlcm5hbCBwdWxsLXVwcwo+IHJl
cXVpcmVkIGJ5IEnCskM/IElmIG5vdCwgZW5hYmxpbmcgdGhlIGludGVybmFsIHB1bGwtdXBzIHNl
ZW1zCj4gdW5uZWNlc3NhcnkuIEFsc28sIHdoYXQgaXMgdGhlaXIgZWZmZWN0aXZlIHJlc2lzdGFu
Y2Ugb24gdGhlc2UKPiBwbGF0Zm9ybXM/IEFyZW4ndCB0aGV5IHR5cGljYWxseSB0b28gd2VhayB0
byBtZWV0IHRoZSByaXNlLXRpbWUKPiByZXF1aXJlbWVudHMgb2YgbW9zdCBJwrJDIG1vZGVzIGFu
eXdheT8KPiAKClRoYW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIFRoZSBDQ0kgYnVzZXMgYXJl
IGV4cGVjdGVkIHRvIGhhdmUgdGhlCnJlcXVpcmVkIGV4dGVybmFsIHB1bGwtdXAgcmVzaXN0b3Jz
IG9uIHRoZSBib2FyZC4gSW4gZmFjdCwgdGhlIGFib3ZlIApwcm9wZXJ0aWVzIGZvbGxvdyB0aGUg
ZXN0YWJsaXNoZWQgUXVhbGNvbW0gQ0NJIHBpbmN0cmwgY29uZmlndXJhdGlvbiAKdXNlZCBieSBv
dGhlciBjaGlwc2V0cyBhbmQgcGxhdGZvcm1zLCBhcyB3ZWxsIGFzIHRoZSBkb3duc3RyZWFtIApL
YWFuYXBhbGkgRFRTLgoKSSBjaGVja2VkIHRoZSBLYWFuYXBhbGkgcGluY3RybCBkcml2ZXIuIEl0
cyBDQ0kgR1BJTyBncm91cHMgZG8gbm90IApkZWZpbmUgYW4gaTJjX3B1bGxfYml0LCBzbyBiaWFz
LXB1bGwtdXAgd291bGQgc2lsZW50bHkgZmFsbCBiYWNrIHRvIHRoZQpub3JtYWwgd2VhayBwdWxs
LXVwLgoKSSB3aWxsIHRoZXJlZm9yZSBjaGFuZ2UgdGhlIENDSSBkZWZhdWx0IHN0YXRlcyB0byBi
aWFzLWRpc2FibGUgaW5zdGVhZCAKb2YgcmVseWluZyBvbiB0aGUgaW50ZXJuYWwgcHVsbC11cC4g
VGhlIHJlcXVpcmVkIEkyQyBwdWxsLXVwcyBzaG91bGQgYmUgCnByb3ZpZGVkIGF0IGJvYXJkIGxl
dmVsOyB0aGUgZXhpc3Rpbmcgc2xlZXAtc3RhdGUgcHVsbC1kb3duIApjb25maWd1cmF0aW9uIHdp
bGwgcmVtYWluIHVuY2hhbmdlZC4KCi0tLQpCZXN0IFJlZ2FyZHMsCkhhbmd4aWFuZwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
