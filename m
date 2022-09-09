Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45068ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Suy8s9EJpss0GeKquYSzfVwmz1+Hn4MJbKJgWI+fV1I=; b=uKpgvMIY3nnAjZ
	dq8YeNow8HIndN6eRgjGc+RbrVeRcvo5c/JqrQPWY7at0Do2zhvZPZwakv1TIQzSQ57cwpR2sR/tP
	w/36he01Q5sX5KOgZRRU8h8tnZA4J3J8BcU1Ghwcec1XGbvHXEyNetuSNX06wgopQZ/LQvoEBw9BA
	MZuxQ0ww6n4+Kq6griY8NOwoqUtEuNu/0fu8lcnCgYoQy8T+1vjenIBly+K8Mj0fhH5wTY+g+FXzP
	Y17cJjCAV4kR+OoyL17BLUEbg2gVmT4zWCBpxHlYdG6XqYkEIrAd7642XZEQOZfjOgFcJAHbvzKK5
	GO+X3lRICkf+oUCk+AoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaKg-00F4Bm-FC; Fri, 09 Sep 2022 09:29:54 +0000
Received: from dggsgout12.his.huawei.com ([45.249.212.56])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaKc-00F4Aa-IX
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:29:52 +0000
Received: from mail02.huawei.com (unknown [172.30.67.143])
	by dggsgout12.his.huawei.com (SkyGuard) with ESMTP id 4MP9dL5TM8z6PmS5
	for <linux-phy@lists.infradead.org>; Fri,  9 Sep 2022 17:27:50 +0800 (CST)
Received: from huaweicloud.com (unknown [10.175.102.38])
	by APP2 (Coremail) with SMTP id Syh0CgA3inOBBxtjV_RbAg--.16776S4;
	Fri, 09 Sep 2022 17:29:38 +0800 (CST)
From: Wei Yongjun <weiyongjun@huaweicloud.com>
To: Vincent Shih <vincent.sunplus@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Wei Yongjun <weiyongjun1@huawei.com>,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH -next] phy: usb: sunplus: Fix return value check in update_disc_vol()
Date: Fri,  9 Sep 2022 09:47:09 +0000
Message-Id: <20220909094709.1790970-1-weiyongjun@huaweicloud.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: Syh0CgA3inOBBxtjV_RbAg--.16776S4
X-Coremail-Antispam: 1UD129KBjvdXoW7Gw4DXF1ktF1xWFWDWF4fuFg_yoWkAFb_ur
	yfKr17Jw4DKFnFvrWDAw4IvryIvFs8XFyFgw40qFy5AFyUtrnay3Z7uFyfuF1fZ3yUCr92
	k3ZrZ343A34xWjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbokYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I6I8E6xAIw20E
	Y4v20xvaj40_JrC_JFWl1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwV
	A0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x02
	67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I
	0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40E
	x7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x
	0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
	z7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zV
	AF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4l
	IxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWrZr1j6s
	0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsG
	vfC2KfnxnUUI43ZEXa7IU1zuWJUUUUU==
X-CM-SenderInfo: 5zhl50pqjm3046kxt4xhlfz01xgou0bp/
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_022950_802028_D750C9C5 
X-CRM114-Status: GOOD (  10.06  )
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

From: Wei Yongjun <weiyongjun1@huawei.com>

In case of error, the function nvmem_cell_read() returns ERR_PTR()
and never returns NULL. The NULL test in the return value check
should be replaced with IS_ERR().

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 5269968b3060..b932087c55b2 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -92,13 +92,13 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	otp_v = nvmem_cell_read(cell, &otp_l);
 	nvmem_cell_put(cell);
 
-	if (otp_v) {
+	if (!IS_ERR(otp_v)) {
 		set = *(otp_v + 1);
 		set = (set << (sizeof(char) * 8)) | *otp_v;
 		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
 	}
 
-	if (!otp_v || set == 0)
+	if (IS_ERR(otp_v) || set == 0)
 		set = OTP_DISC_LEVEL_DEFAULT;
 
 	val = readl(usbphy->phy_regs + CONFIG7);


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
