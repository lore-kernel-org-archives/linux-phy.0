Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79F3DF433DF
	for <linux-phy@archiver.kernel.org>; Thu, 16 Apr 2026 03:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqgIG7OxJbkeIjvEy4MMib4js7u8rcv18kl/CkitK90=; b=MCJLCmK3/qMQe7
	PDxMONKv3k2Bofl6hO6KAY1IckJKq+4rYfDRRKSqm++pn2weSgkifiVe3WVv+piEbZGKz74l8eS3c
	Rde7oPksth1Zmf7mOLpI0F2htNMlHoEf8GjGdP2OFBSLxaWDX2t+wh6e2T4+9NHo9Kf7X735yg2qg
	Yvxrpnm8vjgrQ1qJ6s5e5PIU2tazXWU+gaH6WkPq4T4XCnu0t/whjhBz7mFnOFCjC/hritT3WWbmR
	IJPVyoHY+zR6HHbyxIZw5o3W1DD320tomqa4yNxfZi++WHNJX6gBvzHydd9XCmAuQYPU0SWA2ztkH
	gba0lk/gr0nIIee3ZbGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDDLb-00000001vMo-0Mlv;
	Thu, 16 Apr 2026 03:24:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDDLY-00000001vMS-0KF9
	for linux-phy@lists.infradead.org;
	Thu, 16 Apr 2026 03:24:53 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63G1V8XU1792416
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 03:24:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kCRrk9J85EIL+MB+vk6NyTlj4gicC7h0alWG5teJAv8=; b=DRCnIbgVO6xiLyRm
	huXE13ofi2fd/qfgmnFatHl4Uh/a13c+oF2FGYQLNpg9S/Cq1bRYHffPTkA71rQu
	lo8M/58ndz9OfwYLLAjDxq5WfEW0oLPqHFXnmxITEoGJe3fN9iY7OPPfPWG+npCd
	kpWWkIHit8yUoTkoq0SCPqDRBobqyIZcVcLSPN/oPQfGbWAhJLE5zTdBWT6A2beU
	z5LOYOuX6cf/CfzgfxxazeLWMLe5jnM8vpkZhmt8wym3JeeQKw19P43KhLDu2KOQ
	yPbvWvvZcauBJt+/JF5Wp/vMEmIqrjUev3mKraJj8YzzE7C56td2Z2wrmTop5XkG
	lJoWUw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4djd5pt1cj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 03:24:50 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2c0ba59a830so9657866eec.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 20:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776309890; x=1776914690; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kCRrk9J85EIL+MB+vk6NyTlj4gicC7h0alWG5teJAv8=;
        b=IK64jfErt0T5uR3Gbmq34SeRm1stNh0To/H8gM2juU+60MahIG2+er0O5Q2u2XCvld
         eZBw8wTxEvRlKEfWXjy7cvV8r4/uG7ap+DmyoY30h3ndgPaL7XXoK0sJZzrc5gHVCwpO
         UOjd5vi0Y9ke7N9bGIgjmxxFPMdYCU4v7rtln8EQY+6bo3LtvHgOHcneVpmgRu8OcLke
         wSnispN8dcppJ65z3JG8aePbYuabNNJY/Wpzey1dqO5Grd2oeVI0f0Pujia4Gz+G17eZ
         Kc0ibfpy8sxhhJJUmY3thyczek825eNiyJhHWa0w8bMo8I11KMftrCKEel8fwkZEpxdC
         8URQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776309890; x=1776914690;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kCRrk9J85EIL+MB+vk6NyTlj4gicC7h0alWG5teJAv8=;
        b=JWVEzSWmpwq46zfkd3kykpGJzG73qjvJIrphbdHLmuIiOl4p+3azCGEycgt7+zGFP0
         vs0FQdNQ2jjq/9KVHiaC9V4quM2hLl1JzR0qyCR/qcpktmYxOQZbJMw1A3ur79S82yHE
         trh47SceAPyN8gUMoKtNl5dpIcTnW+Li9e1oSsXTmf3QbggmzJykVo/t2tjSkZ3vzYcI
         f46zFGKwskaf3dTFUCl0JQIY+wBajoOeukD33Ge88d6aPzgcSdJ1ivT73RJ7l5TW79aA
         5NY60lwfqah/yf4ZMpI44VmD6vlDE9bnW3Ew/5EAP5Iq2WLLvFYlAAboTXlhQVzo/5eF
         dMeQ==
X-Forwarded-Encrypted: i=1; AFNElJ/3ek7qKqc1oEKgQZjjxjvXXaGet+4YtqpNMuWEKLzuMZuRO/oEpMdjMqPByxlm+o0Tt8vHg3mDNMA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/sTprgfU37N8A9UpgktqKnyHCeAQkofaDjZag3j80xwQG/hHM
	Uu7Bs3Ivbn6KXKXj8jZ40APNReyNfkeaJ1wURNRO03IJWS0df5cdUZ6QhKlUvCqTB94nollky+f
	6v31nBDsCn2X2l6q9nyu+n+Hnq8cSnxXBC9wOm8jHNsBvOuP8SuLFnEgRfWQmEWf2sRy5
X-Gm-Gg: AeBDieu7StCt2vmYiR91E/QjnoL3+jvR0n1aK2+lKHiSPR+rGAM+8BgS0x/1Xn4no1d
	UuEycRwE1nZ/kUfSS1f2F0kQ02WS0F3DT2XG+sUvE2rRj/LJ4k9Abh/YwAWc52LDWLpgL0DwryO
	L7+SgWuWx+GUTejREBCZT7JXCE0qtmBWWe1S4nZQ5oy3dKxN5dVGnCeXtXDCcAg2nAG+/ZpSk7+
	nezMqTRfLy2Jr+/wC3sbUX2KLmAvssVc0JiSNRvJ0+M8L1rWijwlzKnmZ9DViPU5GIh6v5R7s/i
	i4cqu/QNDoFpBbgzsG7AO8kMDQ1ujzWoZ/SvUtnbqmPlS77q+ccGBL0jpjTBy/NITDWvieA4ar/
	qsHGwZmrvEC6j1OVDBU0GDX9X1DCMMAPYCrCkOcNpRw4YQlVdak2JkNeRN4uhZxDE1AiXb71vxC
	lNnUg=
X-Received: by 2002:a05:7300:7fa1:b0:2dd:2ad3:f799 with SMTP id 5a478bee46e88-2dd2ad3ff90mr4699468eec.9.1776309889845;
        Wed, 15 Apr 2026 20:24:49 -0700 (PDT)
X-Received: by 2002:a05:7300:7fa1:b0:2dd:2ad3:f799 with SMTP id 5a478bee46e88-2dd2ad3ff90mr4699435eec.9.1776309889204;
        Wed, 15 Apr 2026 20:24:49 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2de8eb84813sm5427848eec.18.2026.04.15.20.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 20:24:48 -0700 (PDT)
Date: Wed, 15 Apr 2026 20:24:46 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
Message-ID: <aeBWfv1oXnSQC454@hu-qianyu-lv.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-5-affcebc16b8b@oss.qualcomm.com>
 <20260415-pragmatic-termite-of-attraction-3dbab5@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260415-pragmatic-termite-of-attraction-3dbab5@quoll>
X-Proofpoint-ORIG-GUID: 89iOGeXONa-E3g6-7XlMQVgN-ylXbnQy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE2MDAyOSBTYWx0ZWRfXzoJVhR4Gsm0x
 Ky15ZAO9gYYpM9Nxv3Bfe2f8rFbTfSuD3IoPDL/RQ/AMZCtgcsAmNvx/YulKAyDuf+hcFo4Lwdd
 eTfxnE9KNgCEvCfhTa0tr7Feg+0dzdWruNIzYcT5XOY9lBz71SW/TM6YfjqOMt9JK5cmJHPXvcd
 IEe+dqG0eTVHAkux0srepd55zsZK55QNzuYEb+z9U+8YcEXLuTl8J4TgtXjWIiXiQEA1iER1rq7
 PsE1PDbZ9rLGM9ESBOLq0vg7GgaEYEEniJgaKGOyCKJa9KekTty7EGUqqtpvyaO6t8GXPS3Osoh
 lSauzVigOYE8aaoM/sA+h4nv2UE4fySsboyJKBo8gg3g0yheVD2h1MQ/Sv1THzprUnHXJktoJ6M
 YMiCMuMVOcHaxvIz6nTxQzBNeNzQzSYI2R7hTSh4X/Ksul0wKw2BwZhSdKke4R3EbeCqsHigytn
 nNFnQSirNQILldKuyuw==
X-Authority-Analysis: v=2.4 cv=AcmB2XXG c=1 sm=1 tr=0 ts=69e05682 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=u3NGOs1Tg4bIGv4jLNkA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: 89iOGeXONa-E3g6-7XlMQVgN-ylXbnQy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-16_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 impostorscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604160029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_202452_804702_B7DAA780 
X-CRM114-Status: GOOD (  22.62  )
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

T24gV2VkLCBBcHIgMTUsIDIwMjYgYXQgMDk6NDQ6MTVBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiBTdW4sIEFwciAxMiwgMjAyNiBhdCAxMToyNjowMFBNIC0wNzAwLCBR
aWFuZyBZdSB3cm90ZToKPiA+IERlc2NyaWJlIFBDSWUzYSBjb250cm9sbGVyIGFuZCBQSFkuIEFs
c28gYWRkIHJlcXVpcmVkIHN5c3RlbSByZXNvdXJjZXMKPiA+IGxpa2UgcmVndWxhdG9ycywgY2xv
Y2tzLCBpbnRlcnJ1cHRzIGFuZCByZWdpc3RlcnMgY29uZmlndXJhdGlvbiBmb3IgUENJZTNhLgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cWlhbmcueXVAb3NzLnF1YWxjb21tLmNv
bT4KPiAKPiBzdWJqZWN0OiBkcm9wIGFyY2guCj4gCj4gUGxlYXNlIHVzZSBzdWJqZWN0IHByZWZp
eGVzIG1hdGNoaW5nIHRoZSBzdWJzeXN0ZW0uIFlvdSBjYW4gZ2V0IHRoZW0gZm9yCj4gZXhhbXBs
ZSB3aXRoICdnaXQgbG9nIC0tb25lbGluZSAtLSBESVJFQ1RPUllfT1JfRklMRScgb24gdGhlIGRp
cmVjdG9yeQo+IHlvdXIgcGF0Y2ggaXMgdG91Y2hpbmcuIEZvciBiaW5kaW5ncywgdGhlIHByZWZl
cnJlZCBzdWJqZWN0cyBhcmUKPiBleHBsYWluZWQgaGVyZToKPiBodHRwczovL3d3dy5rZXJuZWwu
b3JnL2RvYy9odG1sL2xhdGVzdC9kZXZpY2V0cmVlL2JpbmRpbmdzL3N1Ym1pdHRpbmctcGF0Y2hl
cy5odG1sI2ktZm9yLXBhdGNoLXN1Ym1pdHRlcnMKPgoKVGhhbmtzIGZvciBwb2ludGluZyBtZSB0
aGUgbGluay4gSeKAmWxsIGRyb3AgYXJjaDogaW4gbmV4dCB2ZXJzaW9uLgoKPiA+IC0tLQo+ID4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9nbHltdXIuZHRzaSB8IDMxNiArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzMTUgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL2dseW11ci5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2dseW11ci5k
dHNpCj4gPiBpbmRleCBmMjNjZjgxZGRiNzdhNDEzOGRlZWI0ZTAwZGQ4YjMxNjkzMGEyZmViLi5j
MTVmODdjMzdlY2JhZDcyMDc2YTZjNzMxZjQ5NTlhMWE4YmQ4NDI1IDEwMDY0NAo+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL2dseW11ci5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vZ2x5bXVyLmR0c2kKPiA+IEBAIC03MzYsNyArNzM2LDcgQEAgZ2NjOiBj
bG9jay1jb250cm9sbGVyQDEwMDAwMCB7Cj4gPiAgCQkJCSA8MD4sCQkJCS8qIFVTQiAyIFBoeSBQ
Q0lFIFBJUEVHTVVYICovCj4gPiAgCQkJCSA8MD4sCQkJCS8qIFVTQiAyIFBoeSBQSVBFR01VWCAq
Lwo+ID4gIAkJCQkgPDA+LAkJCQkvKiBVU0IgMiBQaHkgU1lTIFBDSUUgUElQRUdNVVggKi8KPiA+
IC0JCQkJIDwwPiwJCQkJLyogUENJZSAzYSAqLwo+ID4gKwkJCQkgPCZwY2llM2FfcGh5PiwJCQkv
KiBQQ0llIDNhICovCj4gPiAgCQkJCSA8JnBjaWUzYl9waHk+LAkJCS8qIFBDSWUgM2IgKi8KPiA+
ICAJCQkJIDwmcGNpZTRfcGh5PiwJCQkvKiBQQ0llIDQgKi8KPiA+ICAJCQkJIDwmcGNpZTVfcGh5
PiwJCQkvKiBQQ0llIDUgKi8KPiA+IEBAIC0zNjQwLDYgKzM2NDAsMzIwIEBAIHBjaWUzYl9wb3J0
MDogcGNpZUAwIHsKPiA+ICAJCQl9Owo+IAo+IC4uLgo+IAo+ID4gPiArCQlwY2llM2FfcGh5OiBw
aHlAZjAwMDAwIHsKPiAKPiBTYW1lIGNvbW1lbnQgYXMgYmVmb3JlLgo+CgpUaGUgZXhpc3Rpbmcg
UENJZS9QSFkgbm9kZXMgYXJlIG5vdCBzdHJpY3RseSBvcmRlcmVkIGJ5IGFkZHJlc3MuIEN1cnJl
bnQKb3JkZXIgaXM6CgotIHBjaWU0OiBwY2lAMWJmMDAwMAotIHBjaWU0X3BoeTogcGh5QDFiZjYw
MDAKLSBwY2llNTogcGNpQDFiNDAwMDAKLSBwY2llNV9waHk6IHBoeUAxYjUwMDAwCi0gcGNpZTY6
IHBjaUAxYzAwMDAwCi0gcGNpZTZfcGh5OiBwaHlAMWMwNjAwMAotIHBjaWUzYjogcGNpQDFiODAw
MDAKLSBwY2llM2E6IHBjaUAxYzEwMDAwIChhZGRlZCBpbiB0aGlzIHBhdGNoKQotIHBjaWUzYV9w
aHk6IHBoeUBmMDAwMDAgKGFkZGVkIGluIHRoaXMgcGF0Y2gpCi0gcGNpZTNiX3BoeTogcGh5QGYx
MDAwMAoKRG8geW91IHdhbnQgbWUgdG8gcmVvcmRlciB0aGVzZSBub2RlcyB0byBmb2xsb3cgc3Ry
aWN0IGFkZHJlc3Mgb3JkZXI/CgotIFFpYW5nIFl1Cgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0
b2YKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
