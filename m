Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4C2EC982D8
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 15:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NVLPPSIQVf3c9fqQlPXU7TGJmim3OraKbQzyC9oWDk=; b=Eqqn+4EjHoJGc/
	Eg1Fk+ez8Iu6j2TcpnPE4jZ27vxBBCf1f/04UakMdaffnbS6Rr5MQSK12RpFW6Gy9jbRxOialI48A
	vDAzojU5woZyXNInLBidZgxOPjwhCgSz/uuwzQjiCMsh1SIxdWz0MfW+nZ/vpaxKPdDABC4fSstJ+
	Kynai9JrP+p+652Xit9Gd3tUt3qIliqD5zUEWsUJroy5DDd+fsiTWuIw2qy0gpzrFhYLFBXPFQblg
	wM+hTDFA605Wjv/t+nXGv2+68Jx2DdIPmkFWKNNUTceDEUi/er00VaP3rZpdNuLcC6GYhruY2rzOf
	vBDbYfq3MU3rA4S6SNRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7acU-0000000EuDb-0iu3;
	Fri, 18 Sep 2026 15:35:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7acR-0000000EuCM-2g5r
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 15:35:21 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68IDOV8D3645860
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 15:35:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aHcExhZg4YAG4hA1dN6N72SyV2vQEXlXE7n6/XV+8ak=; b=DplJEfteIkHJQIZc
	nP93LSvXSWEihBwl8luAjm2eIo4XLMXT2aFpRColJabAlFEn2713hL2XhTULhj0/
	7ZdSSjiFrCrLUG9gsfoi0PoczEBZpCiYRPIfg9ffKLryLDGdo4kOpQDKZCpJidqI
	uh2g07zWMBHjMiOppmrH7m3Uxs43Rw9L4AStvKvYOtT+V+xoW86F7FYXApFHefn9
	QWZtjr0g7/cuKCKrEI7Xsctq3hvYgOBR7P+pTKnCOaOfZh39WgMZqrwB9GhHzx8f
	VY6D8fKSCs+/KhB0DG8yLdJdWp4Af5ZbooFheu6Kl922F9yPrfmDt6ybOzilpLHH
	5Eqz3w==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gs37dh8n0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 15:35:18 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-97c3796d17dso47825241.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 08:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789745718; x=1790350518; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=aHcExhZg4YAG4hA1dN6N72SyV2vQEXlXE7n6/XV+8ak=;
        b=LCieG7G2w5H15SK7NDUeTar82/qPkcopn4Yw+uyB/HZ5s4m8vEqKSSAPhZA3TeyVYC
         ADgvn6kFz7gdpJyXwIqV5iFkquMrApiafNK55YlAowISZ/v7NE/2xhgy500AvatcmrE2
         bsMcWXHoqQt9A5hPm0qOzdMGYAg46UuNvhEPYlipTA5v8J7IqsW6NL3GufXh7AOQnL8R
         249crVOujM6ok10zn3E151LN6yHqDbAHVkY4wWSJB+MU2XuPqMG2gS0SJiBQEBLUIvCP
         riDWj9RqbAvlCi1opOPo8OtdZJSqLwd37a+sH29sybRm6/EWtWdPclrX8Rhp/7+of+SX
         nPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789745718; x=1790350518;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aHcExhZg4YAG4hA1dN6N72SyV2vQEXlXE7n6/XV+8ak=;
        b=0RPadgs/jxdlEsEz762bT/dWJgtFL64TUKhWRe0fIJQ8MW+nSGU/yTDkn9zpboSvt9
         iCEElX62pRC7X7drrCGjBrhfV55MW54KxpyLZd3OP8LEB4gN3oon929hXHqDfQVBqfww
         UCb4nXR1gOwIeZ4eb5r7f4PRy1FK7PuerPaH7FnuAGtTS1a8mx0pdcuntc5b9QNjynGJ
         VDHotzqoeZPkq/gaZDrJpIo4LS59s5rRE7oadOzh5jPGTMAgF3mqi9H0LdYNdceQ2yAC
         is3+AeClNWJkTuceiQ+CjfPFdHhnbSDt0+YTKKO6vA9R/DZfcWx81tBLzR4NTDlJ0zPW
         vOhA==
X-Forwarded-Encrypted: i=1; AKwUvBwHmvB18KSDCpIwLYIkjDd2RlbMXH8q4xOoj5y4MStGWXSlU7bQgCyrAMHjJgw5Kcyvb/RyvApWWLU=@lists.infradead.org
X-Gm-Message-State: AFuF++kiQjSfNQ/sqhnldehGXU5r2oitzBg/5VNemIqpluYjNjy4e2eB
	cRSLc0SKFM+nJ0Osd2rWbEI2GaIfZIR17+v/VhaPuqjeBRN50cFKrkHvQzkjz4QMXYonK+8E9Q7
	6/5GiG/yymlu3PP3P7F57ezcBaNs4L8Df3qmhZ5QIl9yvVO77QvTOMXgXsypoJUmM73nk
X-Gm-Gg: AYBFou3LiiLmtogtn/HefNKeYUzxAJh1Xjr82PZYosyr89747XGURAbV6FH4gR1l5RX
	KKdnIMPWEYegsCLXqcz+98kagQkkda1WmPlqaGmLCwLO5XYNGMt7YhII7HdNkUkuGaNulF/KGOH
	pXRJht/lRuLtU/G/bSizo+vwRBzaXAHeuIEw2tNzJkKB/xeB18bcXUmgcjsegEfLH+6Ts/Puibj
	wa5mMxypT8OpmUb9W8DCGN+2saNZujTU2MYnx05UOo/krMrd4c9e0/TYtxTX4fSgT24kaIYfPb6
	+oiYnQKdjju8DUjT+j9joWLi58WYDLxcN8JopyqASjCkHgZD0FDxgXz20rtkgbigcE64zTQcdSM
	HJZEZnIrPbM4IfMuo1sWa9GNWcg5FRe8Y+YVKU3H6UXQ+/S2HuF3pbTxI2t9mn/iG57AgL4kkFQ
	jp/66vocaNiQK67ciPl8qo5YsQ+4r67o5uCUGkk0YagIteEj2YbNPTcj2J0YiEvpBLoA==
X-Received: by 2002:a05:6102:6896:b0:7a1:f7d2:e842 with SMTP id ada2fe7eead31-7a55d28b47cmr1203964137.18.1789745717342;
        Fri, 18 Sep 2026 08:35:17 -0700 (PDT)
X-Received: by 2002:a05:6102:6896:b0:7a1:f7d2:e842 with SMTP id ada2fe7eead31-7a55d28b47cmr1203940137.18.1789745716771;
        Fri, 18 Sep 2026 08:35:16 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2a1b7a4d2csm77669066b.3.2026.09.18.08.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 08:35:15 -0700 (PDT)
Message-ID: <49c7b4d8-a8ec-44e1-ab06-220cf3698ea0@oss.qualcomm.com>
Date: Fri, 18 Sep 2026 17:35:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: johannes.goede@oss.qualcomm.com
Subject: Re: [PATCH v20 2/6] phy: core: Add phy_get_by_of_node()
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-2-dc244e124e71@linaro.org>
 <211caa95-dfbc-427d-8ce8-49cc76c24124@linaro.org>
Content-Language: en-US, nl
In-Reply-To: <211caa95-dfbc-427d-8ce8-49cc76c24124@linaro.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDIyMiBTYWx0ZWRfX4jmQ7Ux/r7Tt
 kumgi20NqGuLNN8zN8SUnKNkAI0dXIs4JnFPGSfAkqhmoOYWk0PDzkLfSYWCIVcds1BGQ+pdBdw
 rsZheVJvKlmbk4cqstrzLXCDFOInC8Q=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDIyMiBTYWx0ZWRfX5MS/YAQhQTf+
 d1RlrqP3ZIVpLFo8sXDHHYwcGbW587uQvZs5b01gpcl8/B7Irt7GcQoY5EkhOA7MCJeChjvREC5
 uExrTh3kBllxlaP37ZgveVSoDoXnfbxtYOR6quJ+VMvcTvf695D97AuGm244lkI+R2DaoS8I66D
 WPLd4lNvVyyoPwFJGV6rX0uWyZCqpNuys0ukQNpFxhg42itP6vkSP2GMn99uiQVAYieYsbTU89E
 ucCXXOUcoYnXeu5bea7p9FKajweZelv+TUvIHMdRAnlDZlCJ8Vtxt/Vdx/QduYMr/DSsIxM7LCd
 WNjsl+hqXSrxHDpdXFRseQKW9jsc5tDjBEz27lxBpagOd+6xyLEv8l+fQr/5GKWhmVOscSfMjAd
 Qy6JeGsID3764Ftczz/Ntl6vVQTWMNv2h5DMEMLhR92xEzQh89Pqc8CZY6HAKkNMx9qDlOq3JKH
 DK4wQx9LFQXPmpRDB1g==
X-Proofpoint-GUID: ZD-OixfxxYFariUvwbGU_iwrtjq0DBOc
X-Proofpoint-ORIG-GUID: ZD-OixfxxYFariUvwbGU_iwrtjq0DBOc
X-Authority-Analysis: v=2.4 cv=R+mWitRX c=1 sm=1 tr=0 ts=6aad5a36 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=KKAkSRfTAAAA:8
 a=Hf2YA8zsX2DXZuERv7MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 impostorscore=0 clxscore=1011
 spamscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609180222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_083519_938921_F025417D 
X-CRM114-Status: GOOD (  27.19  )
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

SGkgTmVpbCwKCk9uIDE4LVNlcC0yNiAxNjoxMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24g
OS8xOC8yNiAxNTo1NiwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4gQWRkIG5ldyBmdW5jdGlv
biBwaHlfZ2V0X2J5X29mX25vZGUoKSBhbGxvd2luZyBsb29rdXAgb2YgYSBwaHkgYnkKPj4gZGV2
aWNlX25vZGUuIFNlcGFyYXRlcyBleGlzdGluZyBsb2dpYyBpbiBfb2ZfcGh5X2dldCgpIGludG8g
YW4gaW50ZXJuYWwKPj4gaGVscGVyIG1ldGhvZCBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSB0byBh
bGxvdyBmb3IgcmV1c2UgaW4gbmV3IG1ldGhvZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQnJ5YW4g
TydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+Cj4+IC0tLQo+PiDCoCBkcml2
ZXJzL3BoeS9waHktY29yZS5jwqAgfCA4MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tCj4+IMKgIGluY2x1ZGUvbGludXgvcGh5L3BoeS5oIHzCoCA2ICsr
KysKPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMgYi9kcml2ZXJzL3Bo
eS9waHktY29yZS5jCj4+IGluZGV4IDg5YWRkZDczMmJmZjMuLjQyYzI3YTJiNDUxNTkgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcGh5
LWNvcmUuYwo+PiBAQCAtNjA2LDYgKzYwNiwzOCBAQCBpbnQgcGh5X3ZhbGlkYXRlKHN0cnVjdCBw
aHkgKnBoeSwgZW51bSBwaHlfbW9kZSBtb2RlLCBpbnQgc3VibW9kZSwKPj4gwqAgfQo+PiDCoCBF
WFBPUlRfU1lNQk9MX0dQTChwaHlfdmFsaWRhdGUpOwo+PiDCoCArLyoqCj4+ICsgKiBfb2ZfcGh5
X2dldF93aXRoX2FyZ3MoKSAtIGxvb2t1cCBhbmQgb2J0YWluIGEgcmVmZXJlbmNlIHRvIGEgcGh5
IGJ5IG9mX3BoYW5kbGVfYXJncwo+PiArICogQGFyZ3M6IG9mX3BoYW5kbGVfYXJncyB0byB0aGUg
cGh5Cj4+ICsgKgo+PiArICogUmV0dXJuczogdGhlIHBoeSBmcm9tIHRoZSBwcm92aWRlcidzIG9m
X3hsYXRlLCAtRU5PREVWIGlmIGRpc2FibGVkLAo+PiArICogLUVQUk9CRV9ERUZFUiBpZiB0aGUg
cHJvdmlkZXIgaXMgbm90IHlldCByZWdpc3RlcmVkLgo+PiArICovCj4+ICtzdGF0aWMgc3RydWN0
IHBoeSAqX29mX3BoeV9nZXRfd2l0aF9hcmdzKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKmFyZ3Mp
Cj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IHBoeSAqcGh5Owo+PiArwqDCoMKgIHN0cnVjdCBwaHlf
cHJvdmlkZXIgKnBoeV9wcm92aWRlcjsKPj4gKwo+PiArwqDCoMKgIGxvY2tkZXBfYXNzZXJ0X2hl
bGQoJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4+ICsKPj4gK8KgwqDCoCBwaHlfcHJvdmlkZXIgPSBv
Zl9waHlfcHJvdmlkZXJfbG9va3VwKGFyZ3MtPm5wKTsKPj4gK8KgwqDCoCBpZiAoSVNfRVJSKHBo
eV9wcm92aWRlcikgfHwgIXRyeV9tb2R1bGVfZ2V0KHBoeV9wcm92aWRlci0+b3duZXIpKQo+PiAr
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4+ICsKPj4gK8Kg
wqDCoCBpZiAoIW9mX2RldmljZV9pc19hdmFpbGFibGUoYXJncy0+bnApKSB7Cj4+ICvCoMKgwqDC
oMKgwqDCoCBkZXZfd2FybihwaHlfcHJvdmlkZXItPmRldiwgIlJlcXVlc3RlZCBQSFkgaXMgZGlz
YWJsZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcGh5ID0gRVJSX1BUUigtRU5PREVWKTsKPj4g
K8KgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X3B1dF9tb2R1bGU7Cj4+ICvCoMKgwqAgfQo+PiArCj4+
ICvCoMKgwqAgcGh5ID0gcGh5X3Byb3ZpZGVyLT5vZl94bGF0ZShwaHlfcHJvdmlkZXItPmRldiwg
YXJncyk7Cj4+ICsKPj4gK291dF9wdXRfbW9kdWxlOgo+PiArwqDCoMKgIG1vZHVsZV9wdXQocGh5
X3Byb3ZpZGVyLT5vd25lcik7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gcGh5Owo+PiArfQo+PiAr
Cj4+IMKgIC8qKgo+PiDCoMKgICogX29mX3BoeV9nZXQoKSAtIGxvb2t1cCBhbmQgb2J0YWluIGEg
cmVmZXJlbmNlIHRvIGEgcGh5IGJ5IHBoYW5kbGUKPj4gwqDCoCAqIEBucDogZGV2aWNlX25vZGUg
Zm9yIHdoaWNoIHRvIGdldCB0aGUgcGh5Cj4+IEBAIC02MjAsOCArNjUyLDcgQEAgRVhQT1JUX1NZ
TUJPTF9HUEwocGh5X3ZhbGlkYXRlKTsKPj4gwqAgc3RhdGljIHN0cnVjdCBwaHkgKl9vZl9waHlf
Z2V0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIGludCBpbmRleCkKPj4gwqAgewo+PiDCoMKgwqDC
oMKgIGludCByZXQ7Cj4+IC3CoMKgwqAgc3RydWN0IHBoeV9wcm92aWRlciAqcGh5X3Byb3ZpZGVy
Owo+PiAtwqDCoMKgIHN0cnVjdCBwaHkgKnBoeSA9IE5VTEw7Cj4+ICvCoMKgwqAgc3RydWN0IHBo
eSAqcGh5Owo+PiDCoMKgwqDCoMKgIHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgYXJnczsKPj4gwqAg
wqDCoMKgwqDCoCBsb2NrZGVwX2Fzc2VydF9oZWxkKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+PiBA
QCAtNjM3LDIyICs2NjgsNyBAQCBzdGF0aWMgc3RydWN0IHBoeSAqX29mX3BoeV9nZXQoc3RydWN0
IGRldmljZV9ub2RlICpucCwgaW50IGluZGV4KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBv
dXRfcHV0X25vZGU7Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCAtwqDCoMKgIHBoeV9wcm92aWRlciA9
IG9mX3BoeV9wcm92aWRlcl9sb29rdXAoYXJncy5ucCk7Cj4+IC3CoMKgwqAgaWYgKElTX0VSUihw
aHlfcHJvdmlkZXIpIHx8ICF0cnlfbW9kdWxlX2dldChwaHlfcHJvdmlkZXItPm93bmVyKSkgewo+
PiAtwqDCoMKgwqDCoMKgwqAgcGh5ID0gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKPj4gLcKgwqDC
oMKgwqDCoMKgIGdvdG8gb3V0X3B1dF9ub2RlOwo+PiAtwqDCoMKgIH0KPj4gLQo+PiAtwqDCoMKg
IGlmICghb2ZfZGV2aWNlX2lzX2F2YWlsYWJsZShhcmdzLm5wKSkgewo+PiAtwqDCoMKgwqDCoMKg
wqAgZGV2X3dhcm4ocGh5X3Byb3ZpZGVyLT5kZXYsICJSZXF1ZXN0ZWQgUEhZIGlzIGRpc2FibGVk
XG4iKTsKPj4gLcKgwqDCoMKgwqDCoMKgIHBoeSA9IEVSUl9QVFIoLUVOT0RFVik7Cj4+IC3CoMKg
wqDCoMKgwqDCoCBnb3RvIG91dF9wdXRfbW9kdWxlOwo+PiAtwqDCoMKgIH0KPj4gLQo+PiAtwqDC
oMKgIHBoeSA9IHBoeV9wcm92aWRlci0+b2ZfeGxhdGUocGh5X3Byb3ZpZGVyLT5kZXYsICZhcmdz
KTsKPj4gLQo+PiAtb3V0X3B1dF9tb2R1bGU6Cj4+IC3CoMKgwqAgbW9kdWxlX3B1dChwaHlfcHJv
dmlkZXItPm93bmVyKTsKPj4gK8KgwqDCoCBwaHkgPSBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoJmFy
Z3MpOwo+PiDCoCDCoCBvdXRfcHV0X25vZGU6Cj4+IMKgwqDCoMKgwqAgb2Zfbm9kZV9wdXQoYXJn
cy5ucCk7Cj4+IEBAIC0xMDAxLDYgKzEwMTcsMzcgQEAgc3RydWN0IHBoeSAqZGV2bV9vZl9waHlf
Z2V0X2J5X2luZGV4KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9ub2RlICpucCwK
Pj4gwqAgfQo+PiDCoCBFWFBPUlRfU1lNQk9MX0dQTChkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgp
Owo+PiDCoCArLyoqCj4+ICsgKiBwaHlfZ2V0X2J5X29mX25vZGUoKSAtIGxvb2t1cCBhbmQgb2J0
YWluIGEgcmVmZXJlbmNlIHRvIGEgcGh5IGJ5IGRldmljZV9ub2RlCj4+ICsgKiBAbnA6IG5vZGUg
Y29udGFpbmluZyB0aGUgcGh5Cj4+ICsgKgo+PiArICogUmV0dXJuczogdGhlIHBoeSBhc3NvY2lh
dGVkIHdpdGggdGhlIGRldmljZSBub2RlIG9yIEVSUl9QVFIuCj4+ICsgKi8KPj4gK3N0cnVjdCBw
aHkgKnBoeV9nZXRfYnlfb2Zfbm9kZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+PiArewo+PiAr
wqDCoMKgIHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgYXJncyA9IHsgLm5wID0gbnAsIC5hcmdzX2Nv
dW50ID0gMCB9Owo+PiArwqDCoMKgIHN0cnVjdCBwaHkgKnBoeTsKPj4gKwo+PiArwqDCoMKgIG11
dGV4X2xvY2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4gCj4gSSBkb24ndCByZWFsbHkgdW5kZXJz
dGFuZCB0aGUgdXNhZ2Ugb2YgbG9ja2RlcF9hc3NlcnRfaGVsZCgpLCBidXQgd2h5Cj4gZG9lcyBf
b2ZfcGh5X2dldCgpIHVzZXMgbG9ja2RlcF9hc3NlcnRfaGVsZCgpIGFuZCBoZXJlIHlvdSB1c2Ug
bXV0ZXhfbG9jaygpCj4gbGlrZSBiZWZvcmUgcGF0Y2ggMSA/CgpIaSwgbm90IEJyeWFuIGJ1dCBJ
IGNhbiBhbnN3ZXIgdGhpcyBxdWVzdGlvbi4KCmxvY2tkZXBfYXNzZXJ0X2hlbGQoKSBjaGVjayB0
aGF0IHRoZSBtdXRleCBpcyBsb2NrIGFuZCB0cmlnZ2VycwphIFdBUk4oKSB3aGVuIG5vdCBoZWxk
LgoKU28gbG9ja2RlcF9hc3NlcnRfaGVsZCgpIGlzIHVzZWQgaW4gZnVuY3Rpb25zIHdoaWNoIGV4
cGVjdCB0bwpiZSBjYWxsZWQgd2l0aCB0aGUgbXV0ZXggYWxyZWFkeSBsb2NrZWQsIGxpa2UgdGhl
IG5ldwpfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSBoZWxwZXIgd2hpY2ggaXMgYWRkZWQgaGVyZS4K
ClRoaXMgbmV3IGhlbHBlciBmYWN0b3JzIG91dCBiaXRzIG9mIF9vZl9waHlfZ2V0KCksIHdoaWNo
IGl0c2VsZgphbHJlYWR5IGhhcyBsb2NrZGVwX2Fzc2VydF9oZWxkKCksIGJ1dCBzaW5jZSB0aGlz
IG5ldyBoZWxwZXIKYWxzbyBpcyBkaXJlY3RseSBjYWxsZWQgZnJvbSB0aGUgbmV3IHBoeV9nZXRf
Ynlfb2Zfbm9kZSgpIGl0CmlzIGdvb2QgZm9yIGl0IHRvIGFsc28gY2hlY2sgdGhlIG11dGV4IGlz
IGxvY2tlZCBpdHNlbGYuCgpBbmQgc2luY2UgdGhlIG5ldyBwaHlfZ2V0X2J5X29mX25vZGUoKSBj
YWxscyB0aGlzIG5ldyBoZWxwZXIKaXQgbXVzdCBsb2NrIHRoZSBtdXRleC4KCk5vdGUgdGhhdCBf
b2ZfcGh5X2dldCgpIGlzIGFscmVhZHkgYWx3YXlzIGNhbGxlZCB3aXRoIHRoZSBtdXRleApsb2Nr
ZWQgZnJvbSBvZl9waHlfZ2V0KCksIHBoeV9nZXQoKSwgb3IgZGV2bV9vZl9waHlfZ2V0X2J5X2lu
ZGV4KCkuCgpSZWdhcmRzLAoKSGFucwoKCgoKPiAKPiBOZWlsCj4gCj4+ICsKPj4gK8KgwqDCoCBw
aHkgPSBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoJmFyZ3MpOwo+PiArwqDCoMKgIGlmIChJU19FUlIo
cGh5KSkKPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X3VubG9jazsKPj4gKwo+PiArwqDCoMKg
IGlmICghdHJ5X21vZHVsZV9nZXQocGh5LT5vcHMtPm93bmVyKSkgewo+PiArwqDCoMKgwqDCoMKg
wqAgcGh5ID0gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8g
b3V0X3VubG9jazsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCBnZXRfZGV2aWNlKCZwaHkt
PmRldik7Cj4+ICsKPj4gK291dF91bmxvY2s6Cj4+ICvCoMKgwqAgbXV0ZXhfdW5sb2NrKCZwaHlf
cHJvdmlkZXJfbXV0ZXgpOwo+PiArCj4+ICvCoMKgwqAgcmV0dXJuIHBoeTsKPj4gK30KPj4gK0VY
UE9SVF9TWU1CT0xfR1BMKHBoeV9nZXRfYnlfb2Zfbm9kZSk7Cj4+ICsKPj4gwqAgLyoqCj4+IMKg
wqAgKiBwaHlfY3JlYXRlKCkgLSBjcmVhdGUgYSBuZXcgcGh5Cj4+IMKgwqAgKiBAZGV2OiBkZXZp
Y2UgdGhhdCBpcyBjcmVhdGluZyB0aGUgbmV3IHBoeQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9waHkvcGh5LmggYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+PiBpbmRleCBlYTQ3OTc1
ZTI4OGFlLi43MWMyZTE2Mzk3MTMwIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3BoeS9w
aHkuaAo+PiArKysgYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+PiBAQCAtMjg0LDYgKzI4NCw3
IEBAIHN0cnVjdCBwaHkgKmRldm1fb2ZfcGh5X29wdGlvbmFsX2dldChzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgKmNvbl9pZCk7Cj4+IMKgIHN0cnVjdCBwaHkg
KmRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnAsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGludCBpbmRleCk7Cj4+ICtzdHJ1Y3QgcGh5ICpwaHlfZ2V0X2J5X29mX25vZGUoc3RydWN0
IGRldmljZV9ub2RlICpucCk7Cj4+IMKgIHZvaWQgb2ZfcGh5X3B1dChzdHJ1Y3QgcGh5ICpwaHkp
Owo+PiDCoCB2b2lkIHBoeV9wdXQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgcGh5ICpwaHkp
Owo+PiDCoCB2b2lkIGRldm1fcGh5X3B1dChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBwaHkg
KnBoeSk7Cj4+IEBAIC00OTMsNiArNDk0LDExIEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IHBoeSAq
ZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gwqDCoMKgwqDC
oCByZXR1cm4gRVJSX1BUUigtRU5PU1lTKTsKPj4gwqAgfQo+PiDCoCArc3RhdGljIGlubGluZSBz
dHJ1Y3QgcGh5ICpwaHlfZ2V0X2J5X29mX25vZGUoc3RydWN0IGRldmljZV9ub2RlICpucCkKPj4g
K3sKPj4gK8KgwqDCoCByZXR1cm4gRVJSX1BUUigtRU5PU1lTKTsKPj4gK30KPj4gKwo+PiDCoCBz
dGF0aWMgaW5saW5lIHZvaWQgb2ZfcGh5X3B1dChzdHJ1Y3QgcGh5ICpwaHkpCj4+IMKgIHsKPj4g
wqAgfQo+Pgo+IAo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
