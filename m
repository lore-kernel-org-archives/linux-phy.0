Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFB060A2600
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 03:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lKiXVWT1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=proton.me header.i=@proton.me header.a=rsa-sha256 header.s=protonmail2 header.b=y/Xa7m2B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=2h8RM4SkgqfCVaTRWrdpJu0LX+7Wj1t7CYv6kqeTQjU=; b=lKiXVWT1gGyUlITV3BlC/dBdlx
	l2nFEmTQSCxmnKisQaU3aGbM7soLVsVBLTjWTgBrMA32urF6kQmw8sMwfhN/w+kqihiNHab2szhfo
	H44tZDOC6Xv9R+pJDCb3w4cvQj8E4iuNITJZzwCnGq/7OjkUSaAJTduvTzSMFKCmV4tjIBl9GGQHd
	Zd4hyyl1bj5KYVG1oVGVOdzmcmmgWV2Ol9f9iDR2HcXY43pg+8/YuO7soGcZfwiV3fEpLajPBd0wo
	4EbmBcEy6uhCNpSctH+HnFjZKr81qaS2OYLFBTs2AWya6Pv3TKWftXsXYo0fAzKjatRRync3pTL5C
	Tid4isDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyvx-00000005XTK-321O;
	Wed, 11 Nov 2026 03:23:37 +0000
Received: from mail-43102.protonmail.ch ([185.70.43.102])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyvt-00000005XSP-3yY3
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 03:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1794367409; x=1794626609;
	bh=AnQTJxJsyON1/Fwj08spRDuNd9Ce/tmtwhBo1vhY0J0=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=y/Xa7m2B+wNXpITqszqicbXrEPA5zE2ELQgvS8N6LNpxSTWasihv1+9eMSsb5yQ3r
	 btvZmg0VTo4g3SxWNraEfa09zrPRB+r2jMpblL5xArYcy2Q0sjio+vfwqxHmJGTxJ4
	 JD2t2uxlY7Cp0x1jvHFD0hseXNphKSkpFtuT6uGeNE57HB3eSGcZ90EouUDKaXzK0u
	 XxAhsPGYNuhjN5xgPq2CEfjEfX9ltpRxFGID1IBsBn/BtVwO+e0eq62qNkBiKBiHZ4
	 78rLNkf7hmXJrGVODy3n9jpJBh4Q4EN0lVNPDsZU4wA1//joug7In3fJ7NXaJRu8lk
	 1QNtcTfhGoRXA==
Date: Wed, 11 Nov 2026 03:23:25 +0000
To: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
From: Soheyb <soheyb_boulaa@proton.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, Soheyb <soheyb_boulaa@proton.me>
Subject: [PATCH v2 0/3] phy: exynos5-usbdrd: fix HS phy init count on Exynos2200
Message-ID: <20261111032309.3365794-1-soheyb_boulaa@proton.me>
Feedback-ID: 140697376:user:proton
X-Pm-Message-ID: db6bc34dc5b1448ca86b8d1420ff9673299626ec
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_192334_810037_803BB32E 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The UTMI phy of Exynos2200 initializes the high-speed (eUSB2) phy but
never exits it, so the high-speed phy is not set up again after it lost
power in system sleep (patch 3, v1 [1]).

Sashiko's review of v1 [2] found two error paths that v1 leaves wrong: a
failed init of the high-speed phy is ignored, so the exit that follows
takes its init count below zero; and the high-speed phy exits before
the steps of the UTMI exit that can fail, so a failed exit leaves the
UTMI phy initialized and the high-speed phy not. Patch 2 returns the
init error, and patch 3 exits the high-speed phy last. Patch 1 undoes
the UTMI init when it fails, which its clocks path already lacks and
which patch 2 makes reachable from the high-speed phy.

Changes in v2:
- patch 1, new: undo the init on failure
- patch 2, new: return the init error of the high-speed phy
- patch 3: exit the high-speed phy last, once the rest of the exit has
  succeeded; drop the comment (Ivaylo); his Acked-by of v1 is left
  out, since the exit has moved

Tested on a Google Pixel 9 (Tensor G4), an out-of-tree port on 7.3-rc7
that uses the Exynos2200 phy ops and powers USB off in system sleep:
USB comes back after each sleep, and with each error path forced by a
test-only switch, both init counts stay balanced. Not tested on
Exynos2200 hardware, nor built in linux-phy next as a whole.

[1] https://lore.kernel.org/all/20261109221522.2796426-1-soheyb_boulaa@proton.me/
[2] https://lore.kernel.org/linux-phy/sashiko-outbox-205724@kernel.org/

Soheyb (3):
  phy: exynos5-usbdrd: power the Exynos2200 phy down when its init fails
  phy: exynos5-usbdrd: return the Exynos2200 high-speed phy init error
  phy: exynos5-usbdrd: fix HS phy init count imbalance on Exynos2200

 drivers/phy/samsung/phy-exynos5-usbdrd.c | 28 +++++++++++++++++++-----
 1 file changed, 22 insertions(+), 6 deletions(-)

base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
