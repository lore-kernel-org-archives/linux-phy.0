Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E002C982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 13:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzhBJNmmXvHXcyMjCBnUUE9qoFYsiY08PhMO2UhD4wQ=; b=iMH5lp9+7bRu5p
	v28zivfDmFDhtIuW3cchIpKb1LQm0fSmntB0o3P43m/kyeAo2ZHDW/Bfl2u/bhOTQrNDByASkAW/J
	wMsEIuuyu5z2B/E4jB5ej5ZRA8lD3ZVtIVLonK2JC1lz+2NJZOhwIs54rKOrRA20QVdwRG3/qnUcC
	Jky2AP4NDY3RAyROWgs4WXbJoifOt72geBnYCQg2CZBI+tH7vTUqvrNr6eFARqJw/wPTbw6xG5CFA
	koGtrQ17xfiP1CKxzVK5bolqMIKEUYJ3ZrZ2G8Q3Noq3fJ2NcKBi9tSia/EkdCpaABdBJPRLJH+q2
	9BFS2pKHdMVeqnlAktfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BoE-0000000BMjK-451E;
	Thu, 17 Sep 2026 13:05:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BoC-0000000BMik-2RqE
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 13:05:49 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68HC0JDw1853521
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dcpLG6DMML8Weg9JX/ObKCjgeBkwW9cRNv7d9wKBVx8=; b=ItBkVj2Bg01+5DVV
	A9ABdg3vzKHIuZtLrjMF/Es16yvvPGMZsEHLHt+Z9ymwOyQ+6OLWB1P8yVJH4BYl
	Fk7nT1p7Nhm74LxmZnbUu5yqAK0PTn0reKoeYiLJInqOgBhj27UCOZpWAhb31ecY
	qqZ7aU0Xy23DuklGx1/ocnQTY85eORgZw2cIKDgdR1M7WFEO0qN7tQlN8mZZQFMG
	mS6tmwN+pRFGRgm/pIcjqmU49r9LQn/tJAP5UB/ZOLVALnw4Jb3a4zV23/e47BDr
	Z6mIxYSKKA/0yPQbOczWLi8Swb2FiV5ED5FiWCSe8L11ihed2L7B1ebIu6Uq4NPC
	b7WpWQ==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grfu4086a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:05:46 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-4b2d1eb484aso1337695b6e.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 06:05:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789650346; cv=none;
        d=google.com; s=arc-20260327;
        b=i6PwjkP3uuB6aMiPHhHUUpdv9ta0Iud13zdZM1/NYJt8RKCVsLj1o1YAlVB21Xu+L4
         WOIBVVSLvxOEBu5Iz83gf2Z+4SxZV3wbCHVYKTFgFnjkDDIXRI9cZznWSsIGblFfBOND
         0qSbzC1lwWtRRiBUyTjHdHtKWM0N/E1Ub/T7sT4NJoFo4JjYp6Kfn4LS6eeRXm9DtFDM
         jB/obZufe2CR/eG6UaMOk2DnUGp6dM65ot7itCGPuHLBces3B3RgKLqbrS8m93l+23Ga
         EZ0FyGHRr1zZ65yFvBFSAMC+5Er92ZPN+RB/JR25UpRqjZeJSkYdZSmb/BkRg3iV44KK
         dmwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dcpLG6DMML8Weg9JX/ObKCjgeBkwW9cRNv7d9wKBVx8=;
        fh=pvOyHld8G4e0KHD+tzzaEh7Ys4auRzZqowqcxZE1E1k=;
        b=gJndYMascy+IWUeoBsYLTfaDAf0Bp9CPFZXIWVENbERB9JDGmeuPmmQ+H6SYAPl+NJ
         xuL59kvjHnJGIc5w1OmcWjAzOoaheJLD9aJ4VgnlU4Ljadi8l9pzWJVpHmOx/F/wrhGj
         tBzOsj8SZDyBPlP+AukCicIFk8uBrXoCMjD/Oe1hDrNHPdF19mnOVjKpjBcatzK6B4a0
         tSp974tpqjPTJwotxqv4w8CoiDehTn9vKrTMrxYZCGMggG3wOTQNP0UQAVMoesSGbMdQ
         Ch7PBq8Q/hXJYU4BFjTy9Ut55VpAJ7WNrBoKRz1EXGgSCvO6FpmNz5Dfu3Qd49evtE6+
         xZOg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789650346; x=1790255146; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=dcpLG6DMML8Weg9JX/ObKCjgeBkwW9cRNv7d9wKBVx8=;
        b=ix/Zi0PWYNzVrIx3evoIZ8PNeKCnAbzi3en+SFWCpsfA6FNv2anVftW4Qw3BOx5buU
         rrvfEItOrH7Wikx3zFYk2buWs0LZD2rhH9uAYU30Em2pcq4veBOyl2qAYbtbUnet8p/r
         Jj+elMUNEfwF1Fu3krEheOR+0KPtYMb94/IyFroYFFplzeyuZzZn4WAfgwcyKeBVkukh
         ysApbemP1k19+ApoU36dPe5FX+mrUS4pLU036PUyycobwpOO4yfyXGIVLyOxD0Erh7s8
         Nw9BjkNSXqNAc6vpD1aIRhyMSc5PSSHAUy07YyQANcA0+0UMcDUSw15TxQ8rpz8MK3K1
         kYrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789650346; x=1790255146;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dcpLG6DMML8Weg9JX/ObKCjgeBkwW9cRNv7d9wKBVx8=;
        b=XfZNZMTNdmDdusRO8o8UiX0lq0Af48OHn7ZmvZhgdOhki2q66QTukYjzQ25KIWzX5V
         +py2meoY4v3LCaOuYKWMJXDTFxDLtQCFvqOPhpE6qT4NeGL+elHewT/kXSzKLA1aCt4z
         vWX2Dzyz40DrUFBzeQzkXuwoS+bxF6u4M1ZfUNnCyjxFvgxi+NBeGPXLwY8HeX+NUp97
         ihK9UoS4Y812JEy/2PyvusLXNbva8OUKKF7io3u7UU7+B+Dk/VtYdVGTiHQhV+22aMcy
         e4AFwery041PxUUCP6vSy6fOj9795u8rnFu6W+a005ceVdXu9YGWPwGB0XE9kdZhonw5
         Wz8g==
X-Forwarded-Encrypted: i=1; AKwUvBwBvnVdkk5Ikman7YSRdy3JxP1YnN5OBRw7a7ulSe97OWDAMcMnRJ3HNOWWIWj9C/d1zJ1ahJuEl7o=@lists.infradead.org
X-Gm-Message-State: AFuF++lYPH+bs540O5U3t1+cEXmcac5mDuGKmVwQMafoCoU+If3Q46Y0
	hGnVWOgBELU5sNOAk6UCkC2oFc3XGki7Q//SykYWmEaP5jO8wh1XyQSd5Bq3WNKgqzWnJjOuC4F
	M8YETUsdFx3YE8qZVoBnarIhQX9ectkal6JcC8V+XDZ4w2K9yyhwMXA3eckrOH1FYopM0QAi6wI
	O867cg+aan727Fx0xsT5QN/BKLjbYrQ187V9nKzpKILfY=
X-Gm-Gg: AYBFou3TpQzDBSp22DXy+s/spES56BxttEjzf7EYPtZR9sqmKu+Ls4GFrhodEpPxfgl
	EGJk6TmqRxvSN6RuXmACJw0D8O4+LITuEI6DJptN6wc6jxtDYd9xt34FIXfOb1ZCJGvzCnYyCkI
	WfEQdZq7aVfUdVBqY9TlRW4eNG48cm4NqaXHh3R28zuyjGwTGW48/rxVBeBPceiO3d0rd3OJkmN
	L+CDqGZAbOfmjsYl5M2xLku+d4Y0DL6urHqrGOI8Ox0ThG6my53B+wEIcSG/ALbm/i4yuuzng==
X-Received: by 2002:a05:6808:2221:b0:4b9:e65b:8c34 with SMTP id 5614622812f47-4ca4cce354dmr6980283b6e.34.1789650345238;
        Thu, 17 Sep 2026 06:05:45 -0700 (PDT)
X-Received: by 2002:a05:6808:2221:b0:4b9:e65b:8c34 with SMTP id
 5614622812f47-4ca4cce354dmr6980206b6e.34.1789650344582; Thu, 17 Sep 2026
 06:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-5-f85c9103177e@linaro.org>
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-5-f85c9103177e@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 15:05:31 +0200
X-Gm-Features: AcwNN1X4DA6jbYE-gBOX2kSb59KYnpL-Q1fbs5emwf1TV0R6vxzWt_eKkq1SKk0
Message-ID: <CAFEp6-0QcUpJ51ud5tOQAX9Vy5U26oJKwe10gSOQV+_o-crFRQ@mail.gmail.com>
Subject: Re: [PATCH v18 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>, Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Proofpoint-GUID: Qoo-XcLbhii_6Umi7NRZAMTXeDizpkmK
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDE4NCBTYWx0ZWRfX6v7wu9uisDP1
 2qwdRNEshbc8LXd2dxNNZZCZPnvQIra8OmV1oVNnFyhm51FmkCHp1nKRaS53ix1gWCLTesUGOf2
 Lz54UZsihV0DsGHZL16f9iF3iZpdpRk=
X-Proofpoint-ORIG-GUID: Qoo-XcLbhii_6Umi7NRZAMTXeDizpkmK
X-Authority-Analysis: v=2.4 cv=LbipeTfi c=1 sm=1 tr=0 ts=6aabe5aa cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=WXF1KB85Zuouuk2w01YA:9 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDE4NCBTYWx0ZWRfX0S0+m7wCFMNb
 eJy244JMCCHk8ZljPjsg9q5xJSop37hAvo4BdYt/Jr2Jh0D+oik9SWm+g7A7APh8ynLOtqcnsiG
 A+GzYDaj7NA3pCKiQQTRHo9yYIRPL3ED1pcf7dIFr+6f5W5ttUkPWubaHiBaTEE+C5j4jifa3Jk
 2SGR2nakv2FOWPv1Y6P2kJkJbwk9R8fKz3mSIlf95nzJRIoDfctmey00Pf71kxCWqBWfru1wgUU
 MCupmhYTNNc9X4XQPERsJ2pgqZe/Z6xWiYzBizlhOsQalzJT4XW0I/MyE6SoQjbqrhe9rt5WZdf
 CVWag+cMFQArX4OjoPdg9cHmdDZh7WkIEkV1V5nNpzsnVhvJO3tWvRkq7C0eYrGeqrS6yhlQoUS
 tuLjEZADQW8sKonJBGy1pwH79iVL42yA/i6u5J3fywl+pmY4rh/0BFm4yy073lQBd5qZo8nfRnx
 N9wHCOFo/ZRfR3xk2eQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_060548_741422_21B5BA34 
X-CRM114-Status: GOOD (  26.57  )
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMTowOOKAr1BNIEJyeWFuIE8nRG9ub2dodWUKPGJyeWFu
Lm9kb25vZ2h1ZUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEludHJvZHVjaW5nIGEgZGVkaWNhdGVk
IENTSVBIWSBkcml2ZXIgY29tbXVuaXR5IGZlZWRiYWNrIHdhcyBib3RoIHRvIG1vdmUKPiB0byBk
YXRhLWxhbmVzIHN0YXJ0aW5nIGF0IGluZGV4IDEgb24gdGhlIFBIWSBzaWRlIGFuZCBhbHNvIHRv
IG1hdGNoIHRoYXQKPiBpbmRleGluZyBzY2hlbWUgaW4gdGhlIENTSSBkZWNvZGVyIC0gQ1NJRC4K
Pgo+IENTSUQgY29uc3VtZXMgdGhlIGRhdGEtbGFuZXMgcHJvcGVydHkgdG8gZGV0ZXJtaW5lIHdo
aWNoIENTSUQgbGFuZXMgdG8KPiBzd2l0Y2ggb24uIEZvciBpbmRleGVzIHN0YXJ0aW5nIGF0IDEg
d2UgbmVlZCB0byBhbWVuZCB0aGUgbG9naWMgc29tZXdoZXJlLgo+IFRoZSBQSFkgc2lkZSBjb2Rl
IG5vcm1hbGlzZXMgdGhlIGlucHV0IGRhdGEgdG8gcmVnaXN0ZXIgbGV2ZWwgbWVhbmluZ3Mgc28s
Cj4gcmVwbGljYXRlIHRoYXQgbG9naWMgb24gdGhlIENTSUQgc2lkZS4KPgo+IEludHJvZHVjZSBh
IHNpbXBsZSBmbGFnIHRvIGRpZmZlcmVudGlhdGUgYmV0d2VlbiBsZWdhY3kgaW5kZXhpbmcgQCAw
IGFuZAo+IG5ldyBpbmRleGluZyBAIDEuCj4KPiBFeGlzdGluZyBiaW5kaW5ncyBhcmUgbm90IGFm
ZmVjdGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9n
aHVlQGxpbmFyby5vcmc+CgpSZXZpZXdlZC1ieTogTG9pYyBQb3VsYWluIDxsb2ljLnBvdWxhaW5A
b3NzLnF1YWxjb21tLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9j
YW1zcy9jYW1zcy1jc2lwaHkuaCB8ICAxICsKPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL2NhbXNzLmMgICAgICAgIHwgMTUgKysrKysrKysrKysrLS0tCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5LmggYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5LmgKPiBpbmRleCA3YTM1NzA0
NGI5ZmRiLi44YzMzMTlmMmNhMWNmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuaAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuaAo+IEBAIC0yMSw2ICsyMSw3IEBACj4gICNkZWZp
bmUgTVNNX0NTSVBIWV9QQURfU0lOSyAwCj4gICNkZWZpbmUgTVNNX0NTSVBIWV9QQURfU1JDIDEK
PiAgI2RlZmluZSBNU01fQ1NJUEhZX1BBRFNfTlVNIDIKPiArI2RlZmluZSBNU01fQ1NJUEhZX01B
WF9EQVRBX0xBTkUgNAo+Cj4gICNkZWZpbmUgQ1NJUEhZX0dSUF9JRCAxCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+IGluZGV4IDg0MDk3ZDgyZDk5YzkuLjZm
NThlNzI5ZWFjZWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2Nh
bXNzL2NhbXNzLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MuYwo+IEBAIC00NzQyLDcgKzQ3NDIsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBhcmVudF9k
ZXZfb3BzIHZmZV9wYXJlbnRfZGV2X29wcyA9IHsKPiAgICovCj4gIHN0YXRpYyBpbnQgY2Ftc3Nf
cGFyc2VfZW5kcG9pbnRfbm9kZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBmd25vZGVfaGFuZGxlICplcCwKPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGNhbXNzX2FzeW5jX3N1YmRldiAq
Y3NkKQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgY2Ftc3Nf
YXN5bmNfc3ViZGV2ICpjc2QsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHU4IGxhbmVfYmFzZSkKPiAgewo+ICAgICAgICAgc3RydWN0IGNzaXBoeV9sYW5lc19jZmcgKmxu
Y2ZnID0gJmNzZC0+aW50ZXJmYWNlLmNzaTIubGFuZV9jZmc7Cj4gICAgICAgICBzdHJ1Y3QgdjRs
Ml9tYnVzX2NvbmZpZ19taXBpX2NzaTIgKm1pcGlfY3NpMjsKPiBAQCAtNDc3Nyw3ICs0Nzc4LDE0
IEBAIHN0YXRpYyBpbnQgY2Ftc3NfcGFyc2VfZW5kcG9pbnRfbm9kZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+Cj4gICAgICAgICBmb3IgKGkg
PSAwOyBpIDwgbG5jZmctPm51bV9kYXRhOyBpKyspIHsKPiAtICAgICAgICAgICAgICAgbG5jZmct
PmRhdGFbaV0ucG9zID0gbWlwaV9jc2kyLT5kYXRhX2xhbmVzW2ldOwo+ICsgICAgICAgICAgICAg
ICB1OCBsYW5lID0gbWlwaV9jc2kyLT5kYXRhX2xhbmVzW2ldOwo+ICsKPiArICAgICAgICAgICAg
ICAgaWYgKGxhbmUgPCBsYW5lX2Jhc2UgfHwgbGFuZSAtIGxhbmVfYmFzZSA+PSBNU01fQ1NJUEhZ
X01BWF9EQVRBX0xBTkUpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwg
ImludmFsaWQgZGF0YS1sYW5lICV1XG4iLCBsYW5lKTsKPiArICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gLUVJTlZBTDsKPiArICAgICAgICAgICAgICAgfQo+ICsKPiArICAgICAgICAgICAg
ICAgbG5jZmctPmRhdGFbaV0ucG9zID0gbWlwaV9jc2kyLT5kYXRhX2xhbmVzW2ldIC0gbGFuZV9i
YXNlOwo+ICAgICAgICAgICAgICAgICBsbmNmZy0+ZGF0YVtpXS5wb2wgPSBtaXBpX2NzaTItPmxh
bmVfcG9sYXJpdGllc1tpICsgMV07Cj4gICAgICAgICB9Cj4KPiBAQCAtNDc5NCw2ICs0ODAyLDcg
QEAgc3RhdGljIGludCBjYW1zc19wYXJzZV9wb3J0cyhzdHJ1Y3QgY2Ftc3MgKmNhbXNzKQo+ICB7
Cj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBjYW1zcy0+ZGV2Owo+ICAgICAgICAgc3Ry
dWN0IGZ3bm9kZV9oYW5kbGUgKmZ3bm9kZSA9IGRldl9md25vZGUoZGV2KSwgKmVwOwo+ICsgICAg
ICAgdTggbGFuZV9iYXNlID0gY2Ftc3MtPmxlZ2FjeV9waHkgPyAwIDogMTsKPiAgICAgICAgIGlu
dCByZXQ7Cj4KPiAgICAgICAgIGZ3bm9kZV9ncmFwaF9mb3JfZWFjaF9lbmRwb2ludChmd25vZGUs
IGVwKSB7Cj4gQEAgLTQ4NDEsNyArNDg1MCw3IEBAIHN0YXRpYyBpbnQgY2Ftc3NfcGFyc2VfcG9y
dHMoc3RydWN0IGNhbXNzICpjYW1zcykKPiAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVy
cl9jbGVhbnVwOwo+ICAgICAgICAgICAgICAgICB9Cj4KPiAtICAgICAgICAgICAgICAgcmV0ID0g
Y2Ftc3NfcGFyc2VfZW5kcG9pbnRfbm9kZShkZXYsIGVwLCBjc2QpOwo+ICsgICAgICAgICAgICAg
ICByZXQgPSBjYW1zc19wYXJzZV9lbmRwb2ludF9ub2RlKGRldiwgZXAsIGNzZCwgbGFuZV9iYXNl
KTsKPiAgICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgZ290byBlcnJfY2xlYW51cDsKPiAgICAgICAgIH0KPgo+IC0tCj4gMi41NS4wCj4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
