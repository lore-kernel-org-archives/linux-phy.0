Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E340FCD4F49
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 15:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcExsUmhdyeOmcl9LCTnOlWGtzXhW/VigHBuS5gSQ1o=; b=iLYbEcRnZ1DVjT
	WlSIbNZGWcFQNe+PmkkYAevDCLSUn0TzunmE2qB+b9WTI1jxOti5gn8YeaTtniC5lrHMT6hfOHRNS
	+i2XZ67pVmUktgCfMPkvHugR/owp+TxxuoFT4MPKZWHpZvzP0CLBEgnPBFBXf7VQWhwL7lw1Krko8
	tqkOqJbEVMeFTbloZeke2n1KpvQfBTfGm0AWLpcWJ2sxa+3ew2sk/mwqR94NM0N9i+vMKyC69BwO1
	vVM77KzcDGWCokf5UjOEezNX4JXJyr0GIBjymU4Khrq9uZspRwiGrT3ojQnMnszPHD2wEFhpPSd5R
	0gFxuajon0MhjWlZKmhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP02t-0000000GBwT-2Exs;
	Mon, 18 May 2026 15:38:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP02q-0000000GBuO-3Ll8
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 15:38:18 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IA8YRL2091050
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 15:38:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DvFJrq9I9ABC+0ql4mQB26et
	oExjY4fLiuus2BHf9CQ=; b=FXQkjpz5bvBvwsTw99Vs63ysooJb8eRAsiehkzTG
	nKwYg2GpZSipNyc3Y2J7drn2N9gMjURjYjmJVl84zYTZtqw5mZFdvqVSOMOCSLYG
	TiM0zc0TrngUSKhAb0MdTjLM7wRK4eZ0VkiiEdyi6LBExoL9tm0sb4YYSk2BsmoI
	1LXxww/Gofh3ydIyIieXncsWCheEy2tQ2rjrTFGBj3SDM2nfQyjt35+syylQ2VV6
	dQg4zFIdcpJWs6NHf/QFfkih3Xhi2cxG5UU/dp3i362UN83WabZPKmMp3oH5gtYe
	ir6JJG0M5EZKNHVpqbkeSPKVHP16hkAvlbwqsPkdQrirNw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e80rpha0b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 15:38:15 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-56f73835016so1745097e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 08:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779118695; x=1779723495; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DvFJrq9I9ABC+0ql4mQB26etoExjY4fLiuus2BHf9CQ=;
        b=GMEXd8TlYn8l2nDYGMfMDV4VuO6Dr5E5FYy4cCdv5CxH3jjxfyDD6jjE8pdY4YdpTA
         DnqfA5gNOAVuWCETqWwbYzrf5n/MKSs4xwNRZwh62MfOod6ookfqt511pPMp/QZKiHNZ
         RS8rj2gIRh9OkgUjmQ3ikORWz8LZBG6YyRNk3PG36lGjnlQTdzdCLxn8mdbOSbilZbFH
         DwEl2tuaQ9qCfiNlsD9MGcCsQyl/le/UXFM8/0O0tCunNMn+nGwVXLhy2z3dWTv3SfjU
         u5DRDyMZMggVyK+SO8Jk9DQeviemOlfVH4ZcKo/X+ugAL8HKRrZg991RViKUXH3MwVJY
         e+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779118695; x=1779723495;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvFJrq9I9ABC+0ql4mQB26etoExjY4fLiuus2BHf9CQ=;
        b=Mjui8DG/vR3UCGG1J+9hbV1f/+f4+Dt/egz4hRlMyc4M4dg9VDj8xyP9r95Ql4u8Lx
         t/9tE7dtr43eKIgYEmeW4FpMuNBc9s12fZitbXbqkFNcFYvIY4LPZ8dDDSpw45wljQ+d
         e+kMUOZvIvHUjuaTtJt86kVd9RZ2YBZEFIIWUJdY5CQC8rPSN39/bOC4fiBnUInbkBUo
         9nJZgLn7hlxM84YBG1Wor/Cbog/pdqfqeDsT8JyT4k9Sx1Z98mOgAgDIoPI+lNk3J4UZ
         qzU12veqi4VbN/UmHvUFr0aZ8RhBDGbKLD/3JoeWrGB+2R74rdVIaDoOSzCvq4e/4+E7
         OT1Q==
X-Forwarded-Encrypted: i=1; AFNElJ96ylbjmhyP2g9sY11jC4yhCbd3b+5iHzwojmwYZogVMO5cUo0AYGWwkaSa+5GAn41L0IXxPhWBQY0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3m7Y7utbUsNyZLkpHThZVd6WLgVdUQm8l5peU1XeeyqTh6E+q
	vIUdmy3gfLleHhRHrraeTjtwe1bQi663BJVwvsudS6WP2/MFBKEqhSOPQy3rkNLJVQmBliNuzwK
	omShWOSu9+HkOh+VDKyrI9+mZSihRwPexPklWIjDvb+U8RbhLUVo2CC9Kc/A03nDYygen
X-Gm-Gg: Acq92OHVJRoR96EMONdXhN0zCvvw+TIoH9LTGiE56rYVQGQnXPv8TE7nkG3XrX+KJKg
	aoOYBylzpwX5TDGqL8k7AVVexfrvMv5KleU9A1wZT4vmXSnn+D+hE6KVWRCCDO+R0sPSsEUndTs
	mhQFXPiW+36yoH5YftniUHMf1pC9JponJisWhGy5JxFkZjAI5Vz3/sCxBPcF7V4Q/r7L0Zdz7sn
	rORFfwlxnhAK8eSLQnadIfpCEUFgVoGJGrPUf3x/3yfJera6McOevwbs+Wk72xl7j2uQKAo5pi1
	3OZfptmaB1+MtAvuFbQ/Vp4N2Iyd7sF/w4yc15WcoAQwbv0b1bfPqDaU9U16VLPR6egoeL042F9
	PEMywVIjlirdBxgDpf462KE2N3aIJ/GTbVQOmgXTyMxJkjPI3tFYvC9jKO3cCc5VU6pYKsClSxt
	6p493ATL0UEZwnn3bSV1nqG2ktOrwof9tS0ZuEPRfqp2sHuw==
X-Received: by 2002:a05:6122:f93:b0:56f:1ea2:8609 with SMTP id 71dfb90a1353d-5760be3dda3mr7944402e0c.3.1779118694597;
        Mon, 18 May 2026 08:38:14 -0700 (PDT)
X-Received: by 2002:a05:6122:f93:b0:56f:1ea2:8609 with SMTP id 71dfb90a1353d-5760be3dda3mr7944368e0c.3.1779118694043;
        Mon, 18 May 2026 08:38:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3958874ffbbsm12931391fa.27.2026.05.18.08.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 08:38:12 -0700 (PDT)
Date: Mon, 18 May 2026 18:38:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
Subject: Re: [PATCH 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
Message-ID: <uc2l2mbobmik5workhcbtry5spe2gyamx2x4yj4rjly4t3dbrh@n34fo74rctnk>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
 <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
 <9aad8e45-b0a5-4c59-8793-8c0747d8fafa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9aad8e45-b0a5-4c59-8793-8c0747d8fafa@oss.qualcomm.com>
X-Proofpoint-GUID: QasTwwAfrWxIhrTxqaYcyN2TTWGgfYtV
X-Proofpoint-ORIG-GUID: QasTwwAfrWxIhrTxqaYcyN2TTWGgfYtV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDE1MyBTYWx0ZWRfX6isJ3iVUIW5Z
 G6w6IUPBsYdV+ygW/BdXdV3pQzIdv8KbCpbEH0LbGLuv7J+BR/ze2WhNpwVnBLcbXYKKkukGBbV
 E6cwykHDhG8orzBOFZihdAXmby/oCDcFHL5G9u2M9ysi75jDxVhspAIw43Uc4Uu3GigbXaveSEm
 1M03b0Us/0BRcxDZ0Q7g5LQEAu2kfrqebt5Il1CkTxdcL/upSQIf90L2rRN0nzORZ8PFvnTpR4U
 aMVv5cQirLO3ko0l1EcwKCVCVeQi/g/0TmPN95c1FweBUx5NGG58CyJ18/58SYXoGb4rSfFmlZu
 YOTNy3n9tUHLjiPWew/hXL5Nnomv8PKW9w5nGzX0LcR7a+t3yI+ZUBwCaZhS8m1goQVaHeijbdb
 mMwGN6CbL0UnpL8FZvul8btV5GXYrf2AL67Fm+ThKcjWOs88mDDdUM0CzuUwXzgD1gQ/0DQRVNy
 znv5ULD03JU3YglQinQ==
X-Authority-Analysis: v=2.4 cv=ecMNubEH c=1 sm=1 tr=0 ts=6a0b3267 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=6j7keePVoSQmJ3wzq-MA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_083816_953778_C568D896 
X-CRM114-Status: GOOD (  36.84  )
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

On Mon, May 18, 2026 at 04:15:16PM +0200, Konrad Dybcio wrote:
> On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
> > On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> >> a flavor called USB43DP, which as the name implies, features USB4, USB3
> >> and DP signal processing capabilities. In that architecture, USB3 and
> >> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> >> The DP part is roughly the same as on the instances without USB4.
> >>
> >> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
> >> Only one USB protocol (and flavor of pipe clock) can be active at a
> >> given moment (not to be confused with USB3 not being able to be
> >> tunneled as USB4 packets - that of course remains possible).
> >> The DP PLL is still used for clocking tunneled DP links. It may be
> >> turned off to save power when no tunnels are active, but that's left as
> >> a TODO item for now.
> >>
> >> Due to the nature of USB4, the Type-C handling happens entirely inside
> >> the Host Router, and as such the QMPPHY's mux_set() function is
> >> nullified for the period when USB4 PHY remains active. This is strictly
> >> necessary, as the Host Router driver is going to excercise manual
> >> control over the USB4 PHY's power state, which is needed by the suspend
> >> and resume flows. Failure to control that synchronously with other
> >> parts of the code results in a SoC crash by unlocked access.
> >>
> >> Because of that, a new struct phy is spawned to expose the USB4 mode,
> >> along with a .set_mode callback to allow toggling between USB4 and TBT3
> >> submodes.
> >>
> >> Thunderbolt 3, having a number of differences vs USB4, requires a
> >> couple specific overrides, pertaining to electrical characteristics,
> >> which are easily accommodated for.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
> >>  1 file changed, 322 insertions(+), 70 deletions(-)
> >>
> > 
> > Overall it looks good. The major question (after looking at TODOs), do
> > we need a separate submode for USB+DP / TBT+DP?
> 
> The problem space is as follows:
> 
> After a TBT (collectively TBT3+ and USB4) link has been established and
> we have a link partner, we may (based on the HW capabilities and user
> config, such as kernel params but not only) start or stop a DP tunnel at
> runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
> AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
> entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
> as a separate DP AUX host)

So far so good. But I still don't grok if having a DP-over-USB4 is a
separate submode or not. I.e. I see code (and TODOs) to detect and
handle DP going on and off. Would it be better if we specify that
explicitly?

> Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
> can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
> (and each of these routers is hardwired to one of the PHYs).
> 
> To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
> super high-res display at one of the physical ports, or a long
> daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
> we would only need one of the PHYs (associated with the router that's
> wired to that port) to provide a DP clock.
> 
> This, along with the normal (logical or physical) present/absent status
> can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
> or something along those lines to toggle that bit as necessary

I don't see phy_set_opts(). So maybe a submode then...


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
