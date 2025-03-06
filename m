Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AF5FC282D1
	for <linux-phy@archiver.kernel.org>; Thu,  6 Mar 2025 19:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KvwP77GcrG8YdSvEtbU3iR5B4F0kqeRnxnbosQK21qM=; b=acrCa8qAN+oizv
	SCIJc8hZmnKMvETKzk59jjg7EdR65hBvGVT9TK8hCYVE/v23a4eI3OYDyB0lb6aaisw/DE/73tb2l
	fR+qQo3IsQEa/ER1GIE+aSra49bxUISBcz8cRTlnvnujF6OkeVoVRE79oXkhM0QRcfOeyl9wdrLjp
	M79+YTIh2xqmPRZEe0RSHhb6+pQ8fHPsIjjwRk1z12ieCNA1jH5d1ffWUzxKITEfXh1gE5GepidAL
	y0v7Wo4m9mvLtx726VTyIOQWveW02qkcNBH2D/NkV1sjqAcyUrcV/pb2t1uWHM8giovGjlTyi9FP+
	PS3hUCXJaBbWpmVAegdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqGuv-0000000C0zi-0WEO;
	Thu, 06 Mar 2025 19:30:01 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqGus-0000000C0xv-0lKz;
	Thu, 06 Mar 2025 19:29:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741289383; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LhMQiTrpinuACBWF/TfiUv/6m6Uc4ebC3J70WJ19u2mQa8pvSEgzxdtBKfmEfSsepufdZxQvWHnIJWiqAaJa2Y/MTRw7vLqLAwrSObGVxWvM3h642MRu8/iLmpqERyLMD8xPiL/tH38PvBosUGgU6ol4yacFd8+6AgoMMg09zKk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741289383; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=J3FMXf/kAUtNvuSZsQyWBK8cEK4f3VIEHblgAMIBzL4=; 
	b=HWWgtKzuBpEKEh1FNUZrVY183c66clDbM0xCkHWA6lDQk8+19U56cJeKuBhTzRhIEJcEiCl3s+lbDFoHLSDVLBx2ssR+oCc6FC48Y0QhC4sHUoPTRpvtcFiGgb+YmAukG4wL6gGNFaH4Pp7YNpcb2nmRlXMIfL3pfjmDZiX4lC8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741289383;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Reply-To;
	bh=J3FMXf/kAUtNvuSZsQyWBK8cEK4f3VIEHblgAMIBzL4=;
	b=dS4u8h0NFBtvoCdx0cRje9ZUFtqr9u6I+Waj98wTjoDcIF02fcnN2+87Kgu/gXMx
	hF1i3mUJIiEmyg2OPIf9/hr8/yWauX/Jfmmh34u6wwCvvmJjsQa0sP/NOJYHWSW6nP2
	Gg93d9qk9xHLhjs0gCHSEdjTlTPo8OJc21GIUgoo=
Received: by mx.zohomail.com with SMTPS id 1741289381820148.17280241335516;
	Thu, 6 Mar 2025 11:29:41 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 06 Mar 2025 20:29:23 +0100
Subject: [PATCH] phy: phy-rockchip-samsung-hdptx: Add support for RK3576
MIME-Version: 1.0
Message-Id: <20250306-rk3576-hdptx-phy-v1-1-288cc4b0611a@collabora.com>
X-B4-Tracking: v=1; b=H4sIAJL3yWcC/y3MQQrDIBCF4avIrDtgYp1CrlKySHVSpcRYtcUSc
 vdK0+X/4H0bZE6eMwxig8Rvn/0aWnQnAcZN4c7obWvoZa+lkoTpofSF0NlYKkb3wTPPREp2RMZ
 Cu8XEs68/8joenfj5anI5RrhNmdGsy+LLIALXgn9dw7jvX+t/1NeTAAAA
X-Change-ID: 20250306-rk3576-hdptx-phy-4ef6630166cd
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_112958_295210_FE41500D 
X-CRM114-Status: GOOD (  11.72  )
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

Despite the compatible already being listed in the bindings, the PHY
driver never gained explicit support for it. This is especially a
problem because the explicitly listed PHY addresses need to be specified
for each SoC.

To solve this, add the compatible, and a PHY config, with the address
gleaned from rk3576.dtsi.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
I thought this must've been already submitted somewhere, but it wasn't
in linux-next and searching for the modified file on lore also didn't
yield any results. I guess this slipped through the cracks, and
torpedoes HDMI support for RK3576 entirely until merged, so it'd be
great if this could be merged in time for 6.15.

Let me know if I'm just very confused and this is already handled in
some other series that's about to be applied.
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index f88369864c50e4563834ccbb26f1f9f440e99271..fe7c057483563686b8076cf2ce562440cfa6fe55 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -2017,6 +2017,13 @@ static const struct dev_pm_ops rk_hdptx_phy_pm_ops = {
 		       rk_hdptx_phy_runtime_resume, NULL)
 };
 
+static const struct rk_hdptx_phy_cfg rk3576_hdptx_phy_cfgs = {
+	.num_phys = 1,
+	.phy_ids = {
+		0x2b000000,
+	},
+};
+
 static const struct rk_hdptx_phy_cfg rk3588_hdptx_phy_cfgs = {
 	.num_phys = 2,
 	.phy_ids = {
@@ -2026,6 +2033,10 @@ static const struct rk_hdptx_phy_cfg rk3588_hdptx_phy_cfgs = {
 };
 
 static const struct of_device_id rk_hdptx_phy_of_match[] = {
+	{
+		.compatible = "rockchip,rk3576-hdptx-phy",
+		.data = &rk3576_hdptx_phy_cfgs
+	},
 	{
 		.compatible = "rockchip,rk3588-hdptx-phy",
 		.data = &rk3588_hdptx_phy_cfgs

---
base-commit: a03be51d680391ba113e2e22b38743c276b6e2fa
change-id: 20250306-rk3576-hdptx-phy-4ef6630166cd

Best regards,
-- 
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
