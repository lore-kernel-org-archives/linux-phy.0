Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD74C55162
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 18:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq3nnJZlY7pLtAMWoYb+BG7mbicpI+1ULe9oOkZQ8M0=; b=bFtDjqVTYBU5de
	LeOKOj2lLhih4tCg112oqpcYxCfgHWLcJLIe/MxjQUpDFMwTvWox6TKA688MCdYNTfAusMRd02HFJ
	uBnQSkA3TwMtjEoPKV0k7o8sRStRgunV00xodARzYIEjlmWXbLm7KxdlI6LTgIKpoGVXH0KbLPVvc
	BCiB2oO1/dHHwAlnOZKp6Yp7mwZP8YM2vJgi1u79XjvD+laEo5oI3+ScLmiTi3D0iB3RuSJ0ZPIuc
	pnLmJahayFkwHctVnZYohN98yk7Rxb38pO9E+rYr1Pc+MwNIS0hg/79fLZxwZZWwcwic1jce+DpMv
	w9RwkdVKxI9zADkEkw9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqasq-0000000FvrF-0BGj;
	Sun, 02 Aug 2026 18:26:00 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqasm-0000000FvpO-2jdF
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 18:25:58 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cc80544c74so7550835ad.0
        for <linux-phy@lists.infradead.org>; Sun, 02 Aug 2026 11:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785695155; x=1786299955; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=F7s3GZYSnT0cjOvsmd+6nT8896EOTxni+8aCua2o/oc=;
        b=ZivFzCHugaAxc/wqeCsPDqBC4Tgcqmv3FcCGZ6dbz9CLD7WG5l4MwqBdiT5Uyvlugd
         gML3OPrHyD39PjYkMHDNq1ARR00uf8qXALk3eB047ecDjj+di+d3Tjede8svJvSOTkk6
         fji8yYHltCuclWFCpZ8gp+WO2SO5BEi9CahSGuLtTg/Cv1MU5qgYzxM5Ahhfvf7ei7/V
         s/BcaqWAdEzlbrHY1qJDEZdDZhg5fv94OSHT2kl+C6c8qZppJ+i+RpZeLhiJl75d3jax
         vhY1pQEVgVkRSUqcDZYJSPS4Hhr2GvZ2CtuU3smrQmBjBUuiPpLlVg4Jlvj5oJWZ7+3O
         x8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785695155; x=1786299955;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F7s3GZYSnT0cjOvsmd+6nT8896EOTxni+8aCua2o/oc=;
        b=a9qkbgW1RTmzAI5P1iFUuqlChIGLtVMU+gn1eQ8mbwOVSGHGLYY+qeiggJ6/JeC89H
         VgnIYYggdrxzFg5EKAYnmRcO8nnFy1JbP4cSAk0+TrR6LavAanRNuqQ9VihTLdNNql+P
         1DP9RUdMQF2Mt4egmn8qjSUjZMBRFDOhCfXY7gpOJPEFOR9lTIJQa7NalnIAKcTHhhoH
         x8UZpz/xQPS98A++MmbHk+GnGLmGvEBkx/FAxcfMbqV9wzAnlUOHV5CIm5x1rN4sdRzD
         WSaM3ePUxXWZq778jgJbzqDmrBws2oOVEp5S/4rpjkaLBENQL5GJ2rl4TrzO78tCbQoh
         ODqA==
X-Forwarded-Encrypted: i=1; AHgh+Rq8/lK+avnY/cP6g7jx5/VBvqxiA31bzB45/+QyZomQ/58Or5dQvJ2kND8l94YCtwif483WzjVyFK8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLfT/frTlbNkVLLmoei7LD6ENSkPyXyPxTpva9IabukWYPVSHZ
	hxFedTzro+OQ10OzBiOUr4NifXgRW4JwiBUgXz0jN0AWK9rel3EXulRl
X-Gm-Gg: AR+sD11oF9Ht2oisWpDlZU4gtYqlnnCEDJGHBfsHyrLroIodp4cF2vDAPnqSI4fsQk0
	gVaDMd48JYK4lep8M5Vdisb5IHGl8PQgeRVVUUsA8rwxXJr5I/3XFTDFHBUrchG0q/SjmTnxWKL
	zEUQ+OcavSe/yiNDvD0X47Jtdd9GtNtZIiZSR3fChLR8Sm5WSYnw9e60HvTPsbYiBv34qKGS1bF
	E8/zmPP53BPhb/ZLovOV36yPuwDbCh9yx/lLygCfZcUjzLOOPSZ/5s+BUPhjJqBrckb9PA3fcIY
	g2T+g+tbpi982CHFlVB8SKHk/Qh47BjHjTj5hHTiaDXXbasJxzFcx5iGpyYx3jqlKpFbSIPn1Ru
	WWdMU3oQjCU1mXQjG1KM5yBBGr5WwhNH0UWoX/s+IiT+zE/Fk2ZVGlTIbDf7+vcOJmWGpuUof3L
	YppiM13Hpxj57Wpa8+DSerF1vpkfmQ5/TpfTUEEApNtI+CQYslsSm52+ZCYgReCjnh
X-Received: by 2002:a17:903:b4b:b0:2cc:dacc:fe27 with SMTP id d9443c01a7336-2d0522984dbmr69929465ad.30.1785695155310;
        Sun, 02 Aug 2026 11:25:55 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2401:5a0:1000:10:233::14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04b0eb7b7sm27443245ad.39.2026.08.02.11.25.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2026 11:25:54 -0700 (PDT)
Date: Mon, 03 Aug 2026 02:25:45 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org, Jiawen Wu <jiawenwu@trustnetic.com>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_06/10=5D_net=3A_pcs=3A_xpcs=3A_add_?=
 =?US-ASCII?Q?ANRESTART_support_for_SGMII_link_recovery?=
User-Agent: K-9 Mail for Android
In-Reply-To: <2886b24e-1c3d-48f7-8b22-9620fa0404f7@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-8-coiaprant@gmail.com> <cfddb747-11d0-476d-8402-e0886cca582e@lunn.ch> <CALj3r0i1TCTgvm8FrJAJqmZgoJp61NCxc_xmVYaDFd-gh4H=7w@mail.gmail.com> <2886b24e-1c3d-48f7-8b22-9620fa0404f7@lunn.ch>
Message-ID: <2E676CD9-82F3-404A-B24D-27679042783B@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_112556_686909_FF0D7AFB 
X-CRM114-Status: GOOD (  16.80  )
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

On August 2, 2026 10:30:52 PM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Sun, Aug 02, 2026 at 11:11:40AM +0800, Coia Prant wrote:
>> Hi Andrew,
>> 
>> Thanks for the careful review.
>> 
>> > This probably needs more wide spread testing. I would be afraid that
>> > if you kick off an AN cycle, you loose the link until it completes?
>> > You would of noticed that on your hardware, but other hardware
>> > obviously behaves differently...
>> 
>> The trigger condition is: link is down AND an_complete is set.
>
>Ah, i missed the "link is down" check. That makes it safer.
>
>I still find it interesting that this devices is different. Has the
>silicon vendor done the integration of the licensed IP wrong?
>
>> Regarding testing:
>> - Jiawen Wu has tested this on Wangxun NICs and reported no regression
>>   (Tested-by tag included in the patch).
>
>Probably Maxime will test on the platform he has, but i don't know if
>any use the XPCS.
>
>	Andrew

Hi Andrew,

Thanks for the follow-up.

Honestly, I'm not sure why the RK3568 XPCS behaves this way. I don't have
other DW XPCS hardware to compare against, so I can't say whether this is
a silicon integration quirk or something else.

What I can confirm is that on RK3568, the PCS does not restart AN
automatically when the link drops and comes back. Without this ANRESTART
change, the link stays dead forever.

I agree that wider testing is needed. If Maxime or anyone else finds a
regression on other hardware, we can revisit and condition it with a
platform-specific flag. For now, the change is limited to the SGMII
recovery path with a safe condition (link down + an_complete), so the
risk should be minimal.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
