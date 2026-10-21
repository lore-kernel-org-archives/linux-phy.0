Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B87606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 12:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qLlEBzae;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=LSEvpQrR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77TtgBQA7/U0gdOoTHfZsY3z1iW91+cpQ2AgqOo8kvo=; b=qLlEBzaeC0I9FV
	fAwVi3334L39HaFxN/Kk0IfN/pHopEENvpZx7wQ9HLuHomHxioV9AISMbF6oq5zTFgY20Cwbp0+nP
	xCVZWjnfbCO3uDFDDRICMJrAKoM6pkPKIGDiYxIIFZv5vtNVeazHU6XiD2M/lVFMllzkHBVO1TsY6
	lUVnp/WNFvWA6n0T81rKihnXjw5xCZT0T0O7EL84KhPdFLHDEPQKwe7aYcHVAlT/YSASLXKrr59gQ
	2hHyVRUv3AOybdx1q+t3xQFH756SuqpuNphXvhjGqw2yaZ3XKOG1mC6FTG9+lQOtJXBJ4KwaaQ3d1
	YXbBJs7JAh+M3/Qv1BLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVOB-0000000BneQ-3EX4;
	Wed, 21 Oct 2026 12:25:51 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVO9-0000000BndT-0nsQ
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 12:25:50 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4a0286c981dso6515115e9.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 05:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792585547; x=1793190347; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tw5g1r1nRIeROllP7HVmms/FbIqd5DbEqN/vD2LQLR4=;
        b=LSEvpQrR53QTIh8KQa6T3wAJhwXQMMrvHaffOv7ncsLA3jwThlcKmT4Z4Wej9MEOWV
         lfXKS0xAjBv+86v7rsHT0W1K9zJiYNNmK9Xge7kzTUndqeHLckQf8oMYQYhl3WtXAIjc
         YeTD3jII9th2Jz+f3/WRv10/1kbe726M+oQZyuVWMlryvNYOBjBTGa/INvA6LaM+gW8s
         TnNlcVWWXH2COiCVvaMguyDoojQy/f++ZbjPvdYk1gkp2y7yTaAqAnsw++lVK8K96LUX
         O5kjsnVJ9kNBhUH4NdyyUD8iRFLq0jRtyf5p6kl2NZCfMW6yqu41usUpSVb+oc7i89jd
         wfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792585547; x=1793190347;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tw5g1r1nRIeROllP7HVmms/FbIqd5DbEqN/vD2LQLR4=;
        b=M8s72FAL2U62GFgM0K84dYoLQEFA4OHUcbxYnDsLm8Jk8ejztFbV8X0VyLxjDfCLWK
         pkub1XP0HObpbqgkoImxcD6abzVbI6CmDnWIWjc6PTi/6iqu2Ent2EApn5OP8Bp6M3rK
         T9dpYbVbDtJb42Lfj5lOHGhFbC/r0ZPu02o2iBtbl/wGHSnt0QbJunpRj4znh4Sh/Fx/
         r/lj7A4yzbh3VxpoGpjWvbeOhhqFxJZtwS9P7XGAcY17vzgp0riN02YyHAD65QXaOQfz
         eMKQrFuZuZqqtGBpbs2xvQYLELCohb5fB6tVeRjV+W2kg+pG9Gn5fagmq/ZGBWU0Bof8
         YihA==
X-Forwarded-Encrypted: i=1; AKwUvBzEMq6ISZ0rIktfK9BkHAre12spPA+r4eYs0YqwwS7RSXi4HiSS5D4sikVmcim2hcmbYhMbfpZAMlA=@lists.infradead.org
X-Gm-Message-State: AFq9FYLD62PMtQ4nevxOJQerC4WsCorzl0Ej9w7WaTwf4LkmiNc2yXys
	dFE+GiOsbidSyB2SGvGLbsFTtY/U34u4TmkCl99p4Gwf66O82XAMkity
X-Gm-Gg: AYBFou2lRJHuwI/RUqcmLB0yE3FS3uWJeKDsR9e/KG5Jhu1CZ1oEF0k4aIHEIRxsaAf
	MulC9Ua282RewTSEUSzdCVimORgfZWlOTHNzpGbUudWd8B9qfDjt5LZEfjwn0rUDkW3Rbx2m/W8
	AJDqBmWobOf+LFOLTWwu9GkGTXcbNWHOJyaLlQgjlZryBREs3K+Jpv/cqWX5tboxCLPbc+mCbq9
	lZ63p9o/3G+ZUu9ZTKX21O95/syD2d8xvlaVpYOD3fpvODpBVKZN6Ou+Yxr9Q16igTQjHWse077
	QPwjpze6FjkmLZ0Nl4UumtOwdm9VGDxH7yymzCQksyw+fkt1/8yTE9qInuOvtEgx4cmTrdNjQA3
	BzZ8NxDyRySuqlz+paw2pybaAPj939NlIG3Su+mDUIZ1AxjaklWgXZdmuYdznl9RWiGqxj7p7QA
	J6t/kd8uelvRmqgkqhwO7IBXmaU1CJhBU5L9285sPt4FPNLgyV0Da44gQF5wK9YSEHgJKhBiRiS
	wLpfDLtT8ynwSwL6aoZvCjYD7PLVmyh3s25fppJ6lvsjd9uOiLT31iIHAzeMqE9WcURsOfq+hcq
	80N3oeddXcPfknuo
X-Received: by 2002:a05:600c:34ca:b0:4a0:eae0:769a with SMTP id 5b1f17b1804b1-4a1fdd39e68mr40596705e9.28.1792585546664;
        Wed, 21 Oct 2026 05:25:46 -0700 (PDT)
Received: from localhost.localdomain ([194.154.195.114])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a1fb698ce0sm80474875e9.2.2026.10.21.05.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2026 05:25:46 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init() in the typec callbacks
Date: Wed, 21 Oct 2026 14:25:37 +0200
Message-ID: <179258553740.5769.1577871699525688695@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <90e14985-be2c-41cb-be74-60ca1829322e@oss.qualcomm.com>
References: <90e14985-be2c-41cb-be74-60ca1829322e@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_052549_250638_30EBD753 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Static, as the v3 cover letter says ("found by inspection. It needs the
bringup to fail"). qmp_combo_com_init() can only fail in
regulator_bulk_enable(), the reset assert/deassert or the clock enables,
and none of those has ever failed on this machine across several hundred
boots with the dock plugged, unplugged and flipped. What I did hit is
patch 1, the "already disabled" warnings from the altmode worker once
runtime PM is allowed from userspace. That log is in 1/2.

To see what Sashiko's scenario actually does I made the forced bringup
fail once by fault injection (return -EIO after the reset assert, i.e.
the com_init() error path runs: regulators off, PHY in reset) and flipped
the dock cable. On next-20261020 with 1/2 applied and the bringup path
otherwise stock: dwc3's phy_power_on() immediately reports "phy
initialization timed-out", and from then on USB3 and DP on that port are
dead while USB2 keeps working. Unplugging the dock runs phy_power_off()
on the unpowered PHY. The writes are swallowed, no SEA on this SoC, but
nothing recovers either: a replug in the same orientation never
re-initialises the PHY because the driver still counts it as up. So no
panic, a silently dead port until the next orientation change.

2/2 doesn't fix that, it only stops the register writes in the callback
itself. I have a v4 that drops 2/2 and instead stops the Type-C
callbacks from releasing and re-acquiring the regulators and clocks on
every orientation or mode change. They only reset and reprogram the
common block, so a failed reconfiguration can no longer leave the PHY
counted as up with its power off. With the same injection on that code
the callback returns the error, the PHY stays powered, and the next
Type-C event brings USB3 and DP back.

Konrad, do you want v4 with that change, or .. ?

Oleg

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
