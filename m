Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA9EC44512
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 03:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmVgMq9kAENjv0S/71k5f4Q8ITL0gy7M5eYE0DUy3L4=; b=pY6x6Ps2yA8mt1
	uVTkiymqbdtdm1hVFTBly9udplwh3aNJlpd38+99dQAyjSfANWMaDyfDQQ0c7tXz57BQxx0Q3UCfn
	Bs+lLd3QtkQNLr0JviGQGz1xsMyUlYANvBrLy7Ef9oaJlGQbNvSVkW8oE8KQ6Ptf605VIj2tjKs1g
	TGvrBcyQnd02RQs+1DMkiN9BvQAy/ENBfSpxyn1YwjKw9raNT0O1n12SIKXjNPrCNvbtxJrKznhCg
	rpxJqSIEeniW4ZoKCKXo2YhuodY5gk5N2oOZj4GDLn7eD93DmX5mem78Rnk3h0G/6w7LbUx9lJ//C
	Mxu2O5U69UEfnPSLx6cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkYqN-000000010YV-3Emo;
	Fri, 17 Jul 2026 03:02:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkYqK-000000010Y6-3Wvk
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 03:02:30 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66GNIkeg4024982
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 03:02:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=okulbd00eydxfaiTL/nAM2B3
	jvDdNW3YSh5leBM4+pc=; b=n+xO3t4qsPeC6rrx9GgP3CBI1bo01PCVS6kthSLo
	DuC5FEWWpxyPMvgWVupXD+VuNS1B67YFuUsyQEvVBcgsGseLrkwipaDXPTfbLtCU
	F946p6LxnHYx/KOYoqqyTBbjGju7onlVLXpC77oDjZzARIdAacepDRGvDnqnN/we
	wOO03JnYf+v+kIPiX80AKrBz7/MiAeWw7zRX2kJELT84RWUj6RwU8WXQvGY7Oinc
	Dedayg6y7R6a9rKOeiYyZst2EIHqI/Pt3Pd+t679Inh4DiVAZD9xFVGghvGFA+EA
	FA3yJj5X4iIyakP2NbDCVNK5zC1tQAdFLzI9wk8fzGXiRg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ff3u8hrpg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 03:02:27 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38e11baa66eso4043245a91.2
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 20:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784257347; x=1784862147; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=okulbd00eydxfaiTL/nAM2B3jvDdNW3YSh5leBM4+pc=;
        b=b6IsDOXExBPww9NZLu7A4yhvI30EKiQF9efEPT0qMht+UvULJC79jaJafC3fiisdnP
         r2jx0GOx6zJcUQYEyHusVkKUhbj+xxqpenvZIE0XB7KCzvZbqnbNVccA9EKDRtS5zzQk
         wL6QLAQxJ+IAf/0a+LRvCr7YB9cK/Fp/ttSfjC4bn3RQ5of7cFCtleJ86ePXgjN+E2Nb
         3xwm1IYODwQxJ9YqP5zcP+DTxxRy6VHVtTvV5WZj+b85MZh784yxKr9/pokFs0WpBshd
         UGsknoLvI4LpJ2Vdj82d3gQ1gtm98Vl0InkpZ4rjlXx2zMsgFTaI40KroZlA2EuzgR/n
         fQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784257347; x=1784862147;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=okulbd00eydxfaiTL/nAM2B3jvDdNW3YSh5leBM4+pc=;
        b=eRQra3wHvfrJUB9W7oTEuMVJbAH8vJJJevnks3LAayrnlGhJ+YMQrg0vCaQA3Ojx+f
         kpz4xbF0u+Qw0JAb/mI91Vd4Y2Uv0nWTv+NenazoxqL8Cd48GGP4ubFHO2wu3Hzb72LA
         bjHvZJVEjObtRitg/9ZktGfoPrdLlGw3nz6P4u5nKk4Sa+Voysnrof8WxqpYmOohyyln
         +sdMPwFAZNekC3m74aZDrTiqAVw3oZRcTc0z8er6lgjGKs7ircHNzfszott1qwAMT1ts
         JoMSvUbgbIv1bNs1S0CY4QER9zARcDJP7dgBgIM8d+uBaCISX3lpCVTmqsh70qxgAqiK
         Gh7w==
X-Forwarded-Encrypted: i=1; AHgh+RqQTVzi+gzYu84pEH8X/DPrFXxSuoxFWKEgTxtWGKrMuLEtJoHmXWbF19QFE34/8w5Seb+XzGxKIx0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxadruoL+oTws4qh+ADE3bd4CVN+jAVuFZ5MVZ9pW55wZgzSGmR
	gxOG9DeJcU40i8XB4Tzg9nF6zkiXwk0DCAoLznHWIgH0FXdckU35Ds9YSAd6l7j5GHuo2Em+55X
	h1ProJM7LPN+uVZAbRjSQ5/8pTsIlnvGfGk1atxcWVBTj2iVnTgTIloVvRglwNQuiwrs1
X-Gm-Gg: AfdE7ck5J6zoCtruHC+UV1UL/FBEtw5EiMBFvnMlLUH/3wFBaw9ylF2k0Yqxfd2wK7I
	jCpP0vwIxxd8Ufqq0HdwEBQ/eB17o9Lecj1EuVJwSqSbTPOIUCvKIEgCAOowu3/BLQSBLgvaeLk
	eRuxhndaHsfD22f4LjXkBWgHEJbNe/WnWGZb395B9WS9ZUvbrdSn0W1G50I/4+FY57caMwoVcd6
	53BEwbTVaXa6/e+v+qAkkPooZ7M4bqDUvhHfZBU2AM9UgCXM3uBfQlcjf2CApwb3uKSC8r/viHI
	/FVtJsUywB3GCs8ZEV1u1igFQdgm313xb07pk0LqUe4J6gk4kDdDx3KdQgNIWiTREBJOQdlKK3W
	I4m0rPk6bvDEtw/GaAzkOpALr93Qp4vAMpLCuxtsemh/Xk2Y=
X-Received: by 2002:a17:90b:3c43:b0:37f:9ce1:735e with SMTP id 98e67ed59e1d1-38e4b537ddemr669534a91.31.1784257347126;
        Thu, 16 Jul 2026 20:02:27 -0700 (PDT)
X-Received: by 2002:a17:90b:3c43:b0:37f:9ce1:735e with SMTP id 98e67ed59e1d1-38e4b537ddemr669511a91.31.1784257346642;
        Thu, 16 Jul 2026 20:02:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a1de21asm1298743eec.23.2026.07.16.20.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 20:02:25 -0700 (PDT)
Date: Thu, 16 Jul 2026 20:02:23 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
Message-ID: <almbPzGy/G5GIctP@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
 <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
 <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
 <ae2e1bdd-59b0-4ff7-bd6f-ddd57267c2d9@oss.qualcomm.com>
 <alBWrK8X7fW+UC7L@hu-qianyu-lv.qualcomm.com>
 <6802dc29-d783-40df-bbb8-8b2dbd94be29@oss.qualcomm.com>
 <alDvnSiplhEg2yhD@hu-qianyu-lv.qualcomm.com>
 <f83556e7-dbb1-4926-a2a0-4690cdbad941@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f83556e7-dbb1-4926-a2a0-4690cdbad941@oss.qualcomm.com>
X-Proofpoint-GUID: Gfr3MtCn7gx6OeIsQzBO5kkrsPByyS3P
X-Proofpoint-ORIG-GUID: Gfr3MtCn7gx6OeIsQzBO5kkrsPByyS3P
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE3MDAyNiBTYWx0ZWRfX6MfEjdhqEoQ4
 RT8R7m9evu691S00riBpKDau+iRvf+JVjDu5vdJjDsu0AyLIVQaml4ICeYa4l4m0ytZkDkmP1jD
 +SuvH+W0LcfkfamVQ0OoLX7cau3TCg0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE3MDAyNiBTYWx0ZWRfX2zGOh97O4V2b
 nuYUCDU8BLIe2+EMLMGfr5lA2G0UKcMPfxHneXDDcXbWBFfoZVjFge+Le/Hii+gwmacDrzou7Ie
 q+Za+KLrH9j3UMtaoPZ5P7Vjicl2bahS/vfdARQdCPV5XL+yQIVjNsXTWrWXaGs2lpwmDL6ZfXP
 LGVMVmux0LlAaBxhoqn9jn+osAFWv+SssXCD0IOcTsp4UZT3xxbMp0cz8pv60W+ugAjl0feWCfY
 acDbMT9z8pcQO08c8hSUMJpudeMLo7CI0SgUvDlv7GpBmJYhRb8dZbl8hdxrlpJCb9Sad7k1NaF
 v1dDyEIxmYcaGpEPG5PPiGECT/0jiJ5kwCibID0IIbChuh24AyezzOCFwTP/30zdvTdPZ9DV+15
 jXRXrhlluHiprR4dFIsESU5ctQ5bJ7voyNHOwDliqJfXK+jtUULRZH4DodE7/FmxdESlS185pQ+
 SsFm8QMdMkFTXhuZNyA==
X-Authority-Analysis: v=2.4 cv=TL11jVla c=1 sm=1 tr=0 ts=6a599b43 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=p66J1l9MvY5bjjRUTH8A:9 a=CjuIK1q_8ugA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-16_08,2026-07-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 lowpriorityscore=0
 spamscore=0 bulkscore=0 malwarescore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607170026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_200228_925038_8706E7E8 
X-CRM114-Status: GOOD (  28.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Jul 10, 2026 at 03:25:37PM +0200, Konrad Dybcio wrote:
> On 7/10/26 3:11 PM, Qiang Yu wrote:
> > On Fri, Jul 10, 2026 at 10:44:20AM +0200, Konrad Dybcio wrote:
> >> On 7/10/26 4:19 AM, Qiang Yu wrote:
> >>> On Mon, Jun 29, 2026 at 11:20:07AM +0200, Konrad Dybcio wrote:
> >>>> On 6/29/26 7:05 AM, Qiang Yu wrote:
> >>>>> On Wed, Jun 17, 2026 at 01:19:49PM +0200, Konrad Dybcio wrote:
> >>>>>> On 5/19/26 7:47 AM, Qiang Yu wrote:
> >>>>>>> Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
> >>>>>>> PCIe3b as consumers of that shared PHY provider instead of separate PHY
> >>>>>>> nodes.
> 
> [...]
> 
> >>>>>>> +			linux,pci-domain = <3>;
> >>>>>>> +			num-lanes = <8>;
> >>>>>>
> >>>>>> Is it fine to keep num-lanes 8 here even for configurations with
> >>>>>> bifurcated PHY?
> >>>>>>
> >>>>>> I would assume so, given essentially this is a x8 host, whose 4
> >>>>>> lanes may simply be effectively NC 
> >>>>>>
> >>>>> Actually, on existing platforms, the PCIe3a and PCIe3b controllers are
> >>>>> never enabled at the same time. When PCIe3a is exposed, it is always in an
> >>>>> x8 slot. But if we have a x4+x4 platform in future, we can simply override
> >>>>> num-lanes to 4 in the board.dts.
> >>>>
> >>>> My question is whether that will be necessary - if yes, sure, we
> >>>> can do it, but if not, we can conclude on this early and not have
> >>>> to fight over it in a couple months
> >>>>
> >>> I think we do need to override it in that case. If both PCIe3a and PCIe3b
> >>> are enabled in x4+x4 mode but PCIe3a keeps num-lanes = <8>, userspace
> >>> will see an 8-lane slot. If an x8-capable EP is connected to that slot,
> >>> both ends will advertise x8 support, but the link is up at x4. That looks
> >>> like a genuine bug from the user's point of view.
> >>
> >> Do we know what's advertised on x86 PCs with bifurcated lanes?
> >>
> > On QCB, it advertise x8. On CRD, PCIe3a is hidden.
> 
> No no, I meant to ask whether we know what the userspace gets to see on
> e.g. an AMD system with a bifurcated slot. I would expect that LnkCap
> may report a different value, but not necessarily. I would assume we
> should probably mimic whatever that does, unless the spec takes a
> stance on what should be done.
>
I don't have any AMD/Intel hardware with a bifurcated slot at hand,
and I couldn't find an lspci example showing what LnkCap reports in
that case either, so I can't confirm what x86 does here.

But can you elaborate on what is the benefits to set it to 8 in x4+x4
mode?

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
