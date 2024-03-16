Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06127C54E5D
	for <linux-phy@archiver.kernel.org>; Sat, 16 Mar 2024 16:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qxot67yx+8Fi+YGIJv13LfndvuFjkqEkPY36z9pu89U=; b=xbdA+i4BYkm+Wc
	9UAjhmCuBp8qCiSykJHOYuJVqiAqjgoweZe7CxSUD2y15zHbisLOleo6LtBpg3UqmDLlslB0Ehb1l
	tyhoQCZ9cyz5h/M5pwIF3eItqyOCwsJEMK0QT5fPBMqQe0l5is+vYLaJ74QK8gSokLfYqYxCGgS2r
	54TvC1gkiYBI64omuC6ARXw/85WqjmPHGkqjqJpyx2T464Jh+gbshLc+Roam47vhLxNmFU668wtED
	+FQ6zxsk5oOeM7FchPvROor+uhFlFyJMo8SAwWYTtLVOkBf7Qxz9SkTxlXws2kFuQL6NcDxF+SUHH
	Ng5/Kxz/3bIIkeQvfUyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlWTZ-00000003Ovs-2Wtk;
	Sat, 16 Mar 2024 16:01:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlWTW-00000003OvB-0T8R
	for linux-phy@lists.infradead.org;
	Sat, 16 Mar 2024 16:01:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CE430602DC;
	Sat, 16 Mar 2024 16:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C8A9C433C7;
	Sat, 16 Mar 2024 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710604888;
	bh=E8gpcSQ4g+qjnbdy6/BOeXM1PQg+hZZkOsNPJV1YA+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AxHeZiVmueWwHy/Tvld9s1FsYsofbgvjQqJ2wBze7H2Ldfmdu8z7WJLEENRkvB5yl
	 +V+3+DpToZpyT4Udw0s11ZnxK5g8V64EfNBOR3yqSf93PzbuxpC0okzC9hLGbXXp9m
	 +GbxG2BGQaXUPbqQMcvOt7/yfxuqZ5KDIQWKTQLUpPknoYGH5nK7HHlbXWqmBHk5EN
	 +xNSK0vBWcRoaeVX7/s4/sN4NoZkg9qLcQeKmNBETBHt+UoLCulQ4SGT09pi2F6MGC
	 wWXuQUfkk8uIFBv32otHrlN4K+L6xTWfO1aYXwMzSzq793luTaZ6+j+20V/3yj8x5H
	 rQhSiewwWp4GQ==
Date: Sat, 16 Mar 2024 11:01:25 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com>
 <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240316_090134_336650_01C1FC36 
X-CRM114-Status: GOOD (  25.98  )
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

On Fri, Mar 15, 2024 at 06:35:15PM +0100, Neil Armstrong wrote:
> On 15/03/2024 18:19, Luca Weiss wrote:
> > On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
> > > Register a typec mux in order to change the PHY mode on the Type-C
> > > mux events depending on the mode and the svid when in Altmode setup.
> > > 
> > > The DisplayPort phy should be left enabled if is still powered on
> > > by the DRM DisplayPort controller, so bail out until the DisplayPort
> > > PHY is not powered off.
> > > 
> > > The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> > > will be set in between of USB-Only, Combo and DisplayPort Only so
> > > this will leave enough time to the DRM DisplayPort controller to
> > > turn of the DisplayPort PHY.
> > > 
> > > The patchset also includes bindings changes and DT changes.
> > > 
> > > This has been successfully tested on an SM8550 board, but the
> > > Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> > > PD USB Hubs and PD Altmode Dongles to make sure the switch works
> > > as expected.
> > > 
> > > The DisplayPort 4 lanes setup can be check with:
> > > $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> > > 	name = msm_dp
> > > 	drm_dp_link
> > > 		rate = 540000
> > > 		num_lanes = 4
> > 
> > Hi Neil,
> > 
> > I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
> > haven't had any success so far.
> > 
[..]
> > [ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
> > [ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
> 
> Interesting #1 means the 4 lanes are not physically connected to the other side,
> perhaps QCM6490/SC7280 requires a specific way to enable the 4 lanes in the PHY,
> or some fixups in the init tables.
> 

I tested the same on rb3gen2 (qcs6490) a couple of weeks ago, with the
same outcome. Looking at the AUX reads, after switching to 4-lane the
link training is failing on all 4 lanes, in contrast to succeeding only
on the first 2 if you e.g. forget to mux the other two.

As such, my expectation is that there's something wrong in the QMP PHY
(or possibly redriver) for this platform.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
