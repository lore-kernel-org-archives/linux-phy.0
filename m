Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CFC606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Wb6Itac1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mhwUCln/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OjGb4bSC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=95EBmVVdfDk3JsfvHfHbGYsB3acwwUigV9WzrB1w0iE=; b=Wb6Itac10h8iyOFTNKkSsj2kI8
	g+4Pytv61+T2o75ME6TXhQchV6l+s5WmyIBNIMOJWwgxT7yADtGYTQWykDCWNMtceIQSJRFKzL7K9
	xu+NCIrYYdjeApmAvVm54CPkIy03lVjgYjCKP+Ti8/c1RjHetiP0iWKA4Q1ul4VusFAn+XIaBH/gE
	nTSJxv+CxduFyBxMElrEwNfrMMgPHc0fS2sDbYrqF+Gc8BYk+ydBycOm8IAsl35bAj+4LywwrGjED
	dvhDhGmyn905UqP3Lp6inXIjImfHSeSafJsnqHPapN2XFfUDe6LClniNLJefyrTpt90qfw7f71Y86
	wTk2gUww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfEL-00000004TKF-238S;
	Tue, 27 Oct 2026 11:20:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfEJ-00000004TJk-1kqA
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:20:36 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAe2SL1061217
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:20:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=P4eIsa0QG1et6Bbl6s14T8R5
	VVdaEq29tvFruu1buwQ=; b=mhwUCln/zl2cjPfX5urcJC7rSUoxsoSalzzQSdQl
	MjChOBwLIxUxkhsjTAakp352ND6kZ8IhqGVUCbYb09JNGZ9mtkADHTq83ms2/S7W
	89ZNxJ1eOXP+EgrFZyCjc/hyNQ2/NGNT70/YGDHoDGkBsiTtVap1Bc+XmRiMvDsv
	k54T9TLeWWAj6ff9bg8UplGe20AyPrt+bO4EjRmOq/xCFzwxamDqz0XruR+2fwlj
	sIn/FxJkdYLzaZweu/Y99g5UG9XrohOIERAAgnMPWY2VY1wjGC9Op9D+ZSmIDP/o
	XuSRUBMv6NH3+c2yaueVu8XYgJ7FYjuIXHnXzVr5VO/iTA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjp2t982c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:20:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f322ef7d3so874335785a.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793100034; x=1793704834; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=P4eIsa0QG1et6Bbl6s14T8R5VVdaEq29tvFruu1buwQ=;
        b=OjGb4bSCLjQSo7vkLYDR4YUDlrjCTp3DsNuRbWv7BlMCteZ0RNgSyo/4nmvNGveLkW
         MJFdx7y1UD11gGRuLO10TLVzuJMVskdfazJ7jGNt3teieI8a+nFlGm/x/oCNbfSvEOkF
         fIpxn+v+WruDqG3j6aQfPOBes/MgxDhXToVHX7dx7iga3Lb8mL/d1MnG/d/TxWw8ckTE
         2rILFhIPltamEZZpSCgvMfY3RHuicn3zrj1NEATaSs/XOSOjNZIablT4Kahkn2Zj3HdW
         Cd+7MZEsC8dsdhGgY6CUHiCy781vR0yutyEkh4WAa02rr0PBcNEkRN820vP/tZAH1PPL
         r3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793100034; x=1793704834;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P4eIsa0QG1et6Bbl6s14T8R5VVdaEq29tvFruu1buwQ=;
        b=J7mjvuQ0jXXmDk7PvI1fOswOwN67SLK5Rw1dJQTGg7m42NCE/6/ZyhnSEbmRAcb+yC
         gPx7LJdRBWJR6blvBfTgkooZiQOmgFUfsgIAK3aqvUq/CRG1nxvBrm8UX4BBAuzodD99
         xmCHdXr6WcRyf2Cn27DISOmvvI4FWoPC2Q049zxFSGxDu8cTqNcntZx8Zt/G8jd2YSnj
         Zjoa8uZ0ZnM8rMP7Kp1u7rFq/RW82csrOyuAJF/zq9HU6Vd144Jgu2oSvEVxXz6bBslc
         99PFUBKSFMC673c59wQwPPJe4ZMWZsXe0UmJAGTXGiX9AnOSyLSdxTOmSuBabyYtPxtM
         c1WA==
X-Forwarded-Encrypted: i=1; AKwUvBzJ/GiyTUXLrPbEpGld1lfw6fQA6x3T78NiTtq6WTuon3yP5rLNUb69WcF1zW9yd+zPjDWeO8Kal1g=@lists.infradead.org
X-Gm-Message-State: AFq9FYIttIfgAW6qvX8e6nvOl346e/bQIWiRITfuvBc9CfaqQi6u9ngD
	jXaQ07ZMmvZ72WMYM/09YpZaEBanOEsxfGabhzTsGyscapHVMxsncCO0zqfrW97HTkpB7GFcVJN
	z3er9JjiI43AY6SVOBbUuXZteL8SPEGf3FK//0Ih7I0Q5NYXXWnvzjPYMCcQRwp1KrcwF
X-Gm-Gg: AYBFou2kTVygjyIDR0ridCk3fiUAUZvetupipLVxlvuyBIilOsLabKXLF4w25iY5MGz
	Q5ZgANxedvT75MLYVln9OwWWsQzfijoAfzkedIGUz+Tec5zS4ww2WQ0HspMzmyz/SwNeqmYbOJE
	HK8Az/Tdrn7Pbxc/skLB1qQxM3couuGHNJAE6buiFRH4PJ9riSczfBbDXVdtwMjXL6Zz1bAKRsI
	SR3Bzt22g5gyxUKCWd1OP7hL7G1QPZdsAfLbG167fybBt30HhfZSDOH+oVO6LSXFp54VHwUcfiS
	yP9ptN5sX0u9u+NT00d1VUzMfvTa6HxcKA6jLwlX27VPvMjxJynXTBPAMzTpYe0UDtqM714ytap
	5XuyAJhv2szzEgbTeDF1AX6onCO/4Ny65oj608AiPdiNzYQ239Jxu6Thjkm1bvWx8og==
X-Received: by 2002:a05:620a:4542:b0:93e:94f2:ada9 with SMTP id af79cd13be357-940ef998f9cmr1348385885a.58.1793100033573;
        Tue, 27 Oct 2026 04:20:33 -0700 (PDT)
X-Received: by 2002:a05:620a:4542:b0:93e:94f2:ada9 with SMTP id af79cd13be357-940ef998f9cmr1348381685a.58.1793100032944;
        Tue, 27 Oct 2026 04:20:32 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebcb9cesm23312072f8f.27.2026.10.27.04.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 04:20:32 -0700 (PDT)
Date: Tue, 27 Oct 2026 13:20:30 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Joonhoe Kim <26rote@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        val@packett.cool, wesley.cheng@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Leave the USB PCS alone in
 DP-only mode
Message-ID: <ec5diah4trv6vcnbnxwcg7b7gyoggjrntojvses5os2rtoygsw@op7uolbonig4>
References: <20261023123512.1912-1-26rote@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261023123512.1912-1-26rote@gmail.com>
X-Authority-Analysis: v=2.4 cv=AJjzCM5L c=1 sm=1 tr=0 ts=6ae08902 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=G99BCXZ-BbZkqKqEctwA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: TilATCJfPQujJz1j3flXFrIjslqZ0_lF
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0NSBTYWx0ZWRfXw370axdzNpv/
 ZicjpzL2/xFP7u9qQoUXO0LrU8gHopo7NrsmqJy8/8O4tQSauf0WFusH54AqHFIPuefIuinkN6J
 MMyFSXxpxcNEpGE6LAqP7kpNQHZWT4g=
X-Proofpoint-ORIG-GUID: TilATCJfPQujJz1j3flXFrIjslqZ0_lF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0NSBTYWx0ZWRfX/QRtyiWIA6ql
 UTFVyKWQnM+QijeW/ko9dStX5yyYf4/x/akG6gtHRvb9mWVBQfeZFTKdWwDSPcGD61RmV9myVcl
 GJdY/i3xxcJp+WaosnbQJjfRBz+dxqhFt2iZFQ+yy9xmsNqPfiRPK5Mi1tzd1lPJZdE6VfqLfla
 5TZb7GcoUfKANaUJzLBcS8qe1x7YSdT+Jfl/c3APkVmnZAoFP55fF+ntUeGr8xdrIxIJWmM255n
 S+4MmxSr878dRpICZ8hh7p0w7EZnjgU4IntFLeVJLk9nIxtmurSQmjjqi/rH/qD8CZWCOU7emG1
 84fvugIFrcPbpnlUAN3rl6k0OFhFzUELouPCqCSfy37+F2AHcApbRwHJZqyIV7gfjObCL8cPvoH
 ejSsfWN6EleNdVusH7csKEqcrFtSLFUt6tpfsY1uHbMRfNSedKhFzGQVs2GBZp9MVZyBMbTWmFx
 egAZTQy4VS9ibgxkqug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_042035_467892_DF12A872 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-23 21:35:12, Joonhoe Kim wrote:
> In DP-only mode (DisplayPort pin assignments C and E) all four lanes
> belong to the DisplayPort PHY and the USB PCS stays powered down.
> Three paths still touch the USB PCS in this state:
> 
> - The USB controller can exit and re-init its PHY in DP-only mode, e.g.
>   across a system suspend that loses power. qmp_combo_usb_init() then
>   programs the USB serdes, lane and PCS tables over the DisplayPort
>   configuration and times out waiting for PHYSTATUS, and
>   qmp_combo_usb_exit() resets and powers down a PCS that is not in use.
> - qmp_combo_typec_switch_set() powers the USB PCS off and on when the
>   orientation changes in DP-only mode, e.g. when a DP-only sink is
>   plugged in the other way round while the mux is still in DP-only
>   mode.
> - qmp_combo_reconfigure_phy() powers the USB PCS off again when the
>   port leaves DP-only mode.
> 
> Skip the USB PCS in these paths in DP-only mode. Keep the
> qmp_combo_com_init()/qmp_combo_com_exit() reference and usb_init_count,
> so that qmp_combo_reconfigure_phy() powers the USB PCS up when the port
> leaves DP-only mode.
> 
> On a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with a USB-C monitor
> in pin assignment C, resume from s2idle fails with "phy initialization
> timed-out", the dwc3 resume returns -110 and the following xHCI resume
> hangs the system.
> 
> Fixes: 896277138c13 ("phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE")
> Fixes: 89563a152973 ("phy: qualcomm: qmp-combo: Add preliminary USB4 support")
> Signed-off-by: Joonhoe Kim <26rote@gmail.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
