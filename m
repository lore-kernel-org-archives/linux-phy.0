Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B537160A2627
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 07:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=n0lfe/WW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ffroot-co-za.20260707.gappssmtp.com header.i=@ffroot-co-za.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=aRD+A9dn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=4xw/gRMlaAkkVPyt0b8bw+0uJujkc5j1YGjTHc1+pE8=; b=n0lfe/WWTx9YePi4oGoQzKkw9I
	h7rRvNvTofPsmhfZnYc0L0F8bGVmK1bviClJ3U4s8KJQcXyEUj2UzdNpK95ao6iAPG0sdBDCTUuw7
	uAONOQqawxjTFbvczfMxCoBnrVqhFxth3qpEgjvBI6fFhCB7j3sN3cPhFYvm0Mnk/mLm2rZUqECLw
	tHMFpdC1cC2rUlIGWdhG50qIDRHa+ZCyunY4HO9wVgwyQZ5jNsffw0jZojy9qNRS3ZpEJIRfhNjDN
	B3u08Q6ue5iJG3Tup5EJlY8l3GFogihw3JBtgHfWmsthm0BXLnJi0YfI1NFPXuKmWhMVAUYptE0vR
	0EiBSPNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSrK7-00000001RIZ-1w7L;
	Mon, 16 Nov 2026 07:40:19 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSrK4-00000001RGd-10gG
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 07:40:18 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-4910b863b84so2257685f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 23:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffroot-co-za.20260707.gappssmtp.com; s=20260707; t=1794814813; x=1795419613; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=gJDbA51981icjHBqjlT3hA/4rMnBxzjkdpVdqxbzHpM=;
        b=aRD+A9dn2ZN1RbThOmaIyv7wn6cQTXWEp1z7H+KPqYrj7htIhGIV6/0oljmO3VFipq
         CKoDjA9OvBEFKELMibXAAlB8kCw0uXrCymKmg3kjXgaKwbtR1USaz5BXm/TqwVwTHIlR
         hf1ng6nu96wKPCauFAUm4ZM6lcQ060ajFJmr/Hc/F4HzmQE8SMjVvCZIXDFtf3xYVBjo
         68T6yWTI1pQ6SfJUJjDOQ+HVYoaA6oMEmw3LfzPku8T81rvZlmBY9AwAgoguvGeTHvBw
         d6ddIlPpySmhZ57vlnOm9MLK2l07/RMujTCm9jKJ6SXrVB+v9OdY09E9GWpZyfxVPO2R
         k9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794814813; x=1795419613;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gJDbA51981icjHBqjlT3hA/4rMnBxzjkdpVdqxbzHpM=;
        b=mNgknfqL/CZn9nK1ec3V72BxG+VFmiCZYlbkZTf5W3Eb7zb6JgR29xzWSM28CgpEWb
         rdxPgMfmPm20KMiK5k0JHK0UI0tVf/NUdPhVGlVQNMvQZosVGhmTDppDhprKt8sWROy4
         xklhcdOZSa3I/MWsjvRG9rO2vCs0S4GY+v3Dm8SpJHBFzawQ/i3t8rJRbg8M+tH84bUK
         FP8thG+Dxoibv3QHoQL2cgh7QLpDLUWg9pir6mRXv2OK6dtOPVaVkiFf45WgH7zJrd8/
         j4c1rss32xZw4QTOD7VqgzHTENpW7eSVC7ydVvvDICSq7GyX+e5yh7iw6xlcDNEf1pAV
         yPRg==
X-Forwarded-Encrypted: i=1; AL+hErGeZbMUmTo9k5jZsu1hXN2gVK61OHoHcehUWBuA1eyZcCJIx7A8yvIN3dpiq9VFAwSaDtmN1vIiKyI=@lists.infradead.org
X-Gm-Message-State: APuU4Z/kD5T+5tPax4VfNplOJo9WuSr8hkozoH7UAAmC7k7RR0ZigtYi
	GDF6AF67pw1v3wi18eLvjC1gvMYil9s3YHP/0Dkqi7onJ/06s7eDLS/kbSEJR5Z472U=
X-Gm-Gg: AYBFou3bPJZ+YCjP9EVPLuS7L81Ys5KTgym2M9+vClgoBh9NM5kHu0T3WKPptvvkSlf
	Ek9oBwJGDDMjoNZqsQ5mMliVHMta6AIb8hepSBHtn/CFsEcV1MPQxJy0YzQ6kNjpqnot3eNLs8C
	j08eQHP9zomPz35z/k6o8w49JJzWQDffKNwmGqekB/PScY+ANBi53vgFDROCQPxdYAhJn6I6PeL
	7hfRr3xZRQfBqi6J5EsnsHc0II6Bj6JCvY2hZWnJ7n1LpSleGMomkD98cSVl7eYxRCldc6IB1d5
	n8t9KfZ5IcszGkXojwlopYibJBwiJLfskIGAhQaqGMu49hCbXRC2SAcpQy7SxvZD8GD/oICErTO
	u9LCsVKvu5kMiByr19eBuVI+iCTGQKTkuKCq2oCgrijv6r6f3eRKE9dRRCC9VKea/B94RkeylIy
	VF/B2SLQ23mBhprVYJpm4QYky23cFKb/xNV/kxYtQMb6bFWojEP3CkoW3zYge1AOlXeUxVVs+6l
	6erqlAS8leKyx2DOXJbEl7elH09KM2ZzMEP6VdHNJ2nt+aB1cxXbnKxP4veolJmyhQDqJum/H4Q
	Qp4FFqajuIsMMDgoS3eZ4H7CRGMWfGJe75nG5Q1YcKR7TdWXIvXf
X-Received: by 2002:a05:6000:41d7:b0:491:e477:6820 with SMTP id ffacd0b85a97d-49c70824309mr21417195f8f.20.1794814812963;
        Sun, 15 Nov 2026 23:40:12 -0800 (PST)
Received: from localhost ([192.145.132.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c605e4a2asm20106374f8f.39.2026.11.15.23.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2026 23:40:12 -0800 (PST)
From: Andrew Gaylard <ag@ffroot.co.za>
To: Vinod Koul <vkoul@kernel.org>,
	Vincent Shih <vincent.sunplus@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] phy: sunplus: don't read the disc_vol cell after nvmem_cell_get() fails
Date: Mon, 16 Nov 2026 09:40:05 +0200
Message-ID: <20261116074006.20357-1-ag@ffroot.co.za>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_234016_578090_896002A5 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

update_disc_vol() returns early only when nvmem_cell_get() gives
-EPROBE_DEFER. On any other error, such as -ENOENT for a device tree
without a disc_vol cell, it passes the error pointer to
nvmem_cell_read() and nvmem_cell_put(), which dereference it.

Use the default disconnect-voltage level on these errors, as the function
already does when the read fails. nvmem_cell_get() never returns NULL,
so IS_ERR() is enough.

Tested on a Tibbo LTPP3G2 board.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Andrew Gaylard <ag@ffroot.co.za>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 0ad4c7160d17..52d80a06abdc 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -84,14 +84,15 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	u32 val, set;
 
 	cell = nvmem_cell_get(usbphy->dev, disc_name);
-	if (IS_ERR_OR_NULL(cell)) {
+	if (IS_ERR(cell)) {
 		if (PTR_ERR(cell) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
+		otp_v = ERR_CAST(cell);
+	} else {
+		otp_v = nvmem_cell_read(cell, &otp_l);
+		nvmem_cell_put(cell);
 	}
 
-	otp_v = nvmem_cell_read(cell, &otp_l);
-	nvmem_cell_put(cell);
-
 	if (!IS_ERR(otp_v)) {
 		set = *(otp_v + 1);
 		set = (set << (sizeof(char) * 8)) | *otp_v;

base-commit: 6bdfbe223ed4735073c299a6645ebd3faac3f51f
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
