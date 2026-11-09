Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37346606EE85
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 09:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GdkKv5AG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=OaHTW74h;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vtFMSei3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=trFfS+6kHISUBPLDRZJlhyGCuvJUlVtMccwkopN5akA=; b=GdkKv5AG0MNZMsObH16f9yXTSs
	sTK8niKI5TpSUNBjY7LVAcjz+O7gUl/xZPi2pOlLJWI6JQ9H6EPES0vmTMS2GrQDtr+TayumRr3bA
	d41EUPdxqXtrnnIxAPQBabQgrI8kaGsOZWZPXadyN8eKBmFv5RtziRnHD79gSa2DxpgVh7zxlCWPM
	ZP3RoC23vJVYVyzo/FrEkOGYi/ub/yLRHfwhwDd9phIG05WGqt+eCy3kqadPhWEuDjO8Jx0k28T3j
	mlNNaAJvWC9uxWERTtsjgz1as8Yn77s5fMX7vzuz4hvWPkuWAkS4EeAxgs1xRmdV5bDxrxKoEjbx2
	Ub2gX6bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLUp-00000000DS9-416Q;
	Mon, 09 Nov 2026 09:16:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLUj-00000000DK0-2V3o
	for linux-phy@bombadil.infradead.org;
	Mon, 09 Nov 2026 09:16:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=4JYzGansMqTukkQ4RDlEbc+etaP39OGNhJKIlvghSHo=; b=OaHTW74h0DwTKJIA0JXwA8ylza
	jfClio0G+2PEGNlrUXUbgasp/9iWPQqy8XZpmMVga0JG9r0VF0D4gwjI5lO2i+apaxHh1vercSqVz
	dmdJTQCEr8n15+GQVeNKX2sb40TDhxdd2nuy9UpimbgRm1rJxaCcfwMyheooXz7G/Z9VCZdGTU1fJ
	Og+OAhnPIJmjCWsdFpkASflRJN90QSsHgUHWN28nS9RFxASDrgEBo3LBEzbWuxvxOmyPmSUAJTd04
	VfRtbt9iihnJFrmFKz0q1DipSMJP09XyGo9ieQUrG7eI9jtKA/OGhxfZmgPgxomVrs8lCazmIyBUd
	6IaORpvw==;
Received: from mail-dl1-x1233.google.com ([2607:f8b0:4864:20::1233])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLUf-00000006Vsj-14dR
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 09:16:52 +0000
Received: by mail-dl1-x1233.google.com with SMTP id a92af1059eb24-1a3c08d6928so1123251c88.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 01:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794215806; x=1794820606; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=4JYzGansMqTukkQ4RDlEbc+etaP39OGNhJKIlvghSHo=;
        b=vtFMSei3clygjxGOb7PUPicdJSzc0YLtaRUyT2N+plO1iceebtieDyGdUTFmU6a5vN
         vh6UaHHyb5KV4UD6/2lIa1YKhyrQtEGGSVtFNT8ASHHKnoGgFi9awzOvb3agriJviqvb
         +IRF+foXDiuJFPvF6icaDApeodGjP0pO2tlkqICeIG1SzBhU544lsBotrkx+Hq3zLJzf
         Xo5q76oBxI6h2W3TiH7BbF0PQTsTtBoc8mBmTYaQPaILP3uBBd/W3oazdDVNi5r5J++c
         ezhzeZrUH7WFXOJqApASiB9P2TY7NYP+REn4ORurns8gJ2hcWi5c/G+aFeyBpVFfyoGi
         nVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794215806; x=1794820606;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4JYzGansMqTukkQ4RDlEbc+etaP39OGNhJKIlvghSHo=;
        b=edTog1mLkHm/HCfSthvQtC3ZCvd698HDmQJnUa/TUo307aKI2v7ZcnZ75r4lAEw0nq
         KBKTVzrfLXLr+6OldmMIJH4nW47FAIKlvcJZIUCqeyBIGcKAybXF0GZE9kxCXCektesK
         dXrefPTQx2Y/SlhNXkhq1HN0zLKzXBMAcadaJ6QZQ3/CE6eMTPU5qFeqxggj5UXnggVr
         bTQpBhsedZnxnj9ZIEtZ6HvNwnXRKld2mIIMz4q1+6jAnVYfZV8hLFgoMZQNqZ+HbWeg
         9teTPZlVdmazKPaEXhdsI1JAMHVpVIzW1tTrilrxf05RK0OATD14kO+4S5Gt55ZeJwtb
         8W9g==
X-Forwarded-Encrypted: i=1; AL+hErFpBwWe4YWIDFNeO7Wxw/OLMmpq6rYAGkagZXaMWXQSdR0bCRoNjIr6JLpwK1/WScoYhPofh5QhVic=@lists.infradead.org
X-Gm-Message-State: APuU4Z/Ee1kMGqY3Hvtu89u9hnAz7t1XUHGZZ3OoAVZABe+mSn6tUt4C
	5WMZPMp71p7n+zyfDimtNrk07LB5AroMJdua/4Fl1gwGGt8pxUVTBa/fyq8esu5I
X-Gm-Gg: AYBFou1fIALvJK8OCQu++FiqNVhiic4ZzhmyQ7NdOO/OR+kA9YBQnGLJ2i/JDfSRkP/
	ZhGcro2HpYDS04bilS0XnqDFubfwNrCmf6PgCKrtXAT0lSwsFqGzvo1+npRo/K6TJRKvD+Qg7qi
	E9xxnokS1dgSAkn5pPwxNGKfc6TGcAP1MKM8/bJ7YGYvbJu7Ri/zJzpSLSpxPU51zUGKIMd563X
	LD80ottUdZJ9o3Kmlygd4IxD6mRGHGi8wdPERvSwFP5Tu4MK1sMrfTp18oPlawqDA1dK9Rvwt5k
	wo3m06p2gVklCScWi/60fhb1L04+Z+W7TatdDHbTjcSadR3aF8rgsnHGjtBNMgOfSVhz0ricaeZ
	XpzqzjasQGAMbGZ+G2MUKgwfprNWRjl1a/ekjGTZ19WxhaAWtOMmKfkkwmH41L+sAkWUBtgIzn8
	mDj5SfJ/nj0IbYQ2jSJ8RMbFWlSjcnq0Ql1J50xqHoPma2TxE46pSF5HvVFzhaGqvff8uAP4ni4
	u6AkSmsbgvMwuwA+8eQrWDPXbJyfuz2xscnMVnRmzhYptsNtey5gTteruIe6Dv/J8RKTRoqzSNX
	EUirTfSAb6gy7iSpaIid8G2zBZZACplzOiBp4lDb4VBDL5kkcA==
X-Received: by 2002:a05:7022:e02:b0:191:3c:aae7 with SMTP id a92af1059eb24-1b39feec174mr7917195c88.26.1794215805760;
        Mon, 09 Nov 2026 01:16:45 -0800 (PST)
Received: from hj.. ([163.239.22.29])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b375728f8bsm10675160c88.15.2026.11.09.01.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 01:16:45 -0800 (PST)
From: hyunjungg <hj351016@gmail.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Hyunjung Ko <hj351016@gmail.com>
Subject: [PATCH] phy: rcar-gen3-usb2: cancel OTG work on unbind to avoid use-after-free
Date: Mon,  9 Nov 2026 18:16:33 +0900
Message-ID: <20261109091633.1430331-1-hj351016@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_091649_794811_16D4BEA6 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.1 (/)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Hyunjung Ko <hj351016@gmail.com>

The OTG role/VBUS interrupt (rcar_gen3_phy_usb2_irq) and the role sysfs
attribute schedule channel->work (rcar_gen3_phy_usb2_work), whose handler
dereferences the channel (ch->extcon). The channel is devm-allocated, so
it is freed at unbind, but nothing cancels channel->work:
rcar_gen3_phy_usb2_remove() only drops the role sysfs file. A work
scheduled just before unbind can run after the channel has been freed, a
use-after-free.

Cancel the work via devm, registered before the interrupt is requested so
that on unbind devm frees the interrupt first (no new work can be
scheduled) and then runs the cancel action before the channel is freed.

Fixes: 2b38543c8db1 ("phy: rcar-gen3-usb2: add extcon support")
Cc: stable@vger.kernel.org
Signed-off-by: Hyunjung Ko <hj351016@gmail.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index b5ba751..35e519a 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -1171,6 +1171,13 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
 }
 
+static void rcar_gen3_phy_usb2_cancel_work(void *data)
+{
+	struct rcar_gen3_chan *channel = data;
+
+	cancel_work_sync(&channel->work);
+}
+
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1277,6 +1284,17 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		return irq;
 	} else if (irq > 0) {
 		INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
+		/*
+		 * Registered before the IRQ so that, on unbind, devm frees the
+		 * IRQ first (no more work can be scheduled) and then cancels any
+		 * work still pending before the channel is freed.
+		 */
+		ret = devm_add_action_or_reset(dev,
+					       rcar_gen3_phy_usb2_cancel_work,
+					       channel);
+		if (ret < 0)
+			return ret;
+
 		ret = devm_request_irq(dev, irq, rcar_gen3_phy_usb2_irq,
 				       IRQF_SHARED, dev_name(dev), channel);
 		if (ret < 0)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
