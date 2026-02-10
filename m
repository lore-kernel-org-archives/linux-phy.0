Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC29CEB26F5
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 18:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G/90e17kp5jvNa5JQWxkdVWx9Ap6KUgRjmYst5T9p5M=; b=YtX4TC8g9lhnc0
	G1sI0pxkQAXN790rP6Y7FsBDQ5TTYtYufp0QfD3aYmHVrN7Vii872n/NICkkGJHMEeK5rde4RAnaY
	GcLHw51IKL57pTkjip6l3IqcLCPXfS6uUBb0w7F3YcSx7jWhqyzcUVPLFGQQ3ks4WjX3+XSQsUgUd
	PMNjGFM0cEAxpXb86fBFvzP2zOfnJNwnXY77SohAt8MffsCIJ1JeVnNYC3fxKq21s+w/BZ6ARhKAa
	4ovdXnwCKsBFb/61RquGbMoU10uQ2kEYXdmx8j3vd2XTonCqaYEsKGV5ToqaujpOV8vXDB9xn8KJb
	62PWDRDaGizYxzRsLu2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpsFf-0000000HOBc-3che;
	Tue, 10 Feb 2026 18:14:20 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpsFd-0000000HOBH-25qX
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 18:14:18 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-c6de0527ce1so634811a12.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770747256; x=1771352056; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9+ncAZEnZ4mXiLnJbrXQN6RzFcWEjU5z/GGAu5tYy5I=;
        b=XUOlADO2mVGiD9nbxQTwLcuI/ORtW9Z3uPm42aTi4e72tbd5v6aqV2n6jPUBg0THL0
         iaTTcB0HBe32txMHGvA4biJ5cn0atT5lFv1zQmUBVKl2NtkGm9X4K/48TULcqWKhvNz/
         Xj/ST3fMAREh2/PiWQYX3cFF7D0TnGu+9x0h0hN9r0HAlADM1BKB+/huF/Y/7EyKYWf7
         se091V+np5Q+ZptaWcAePmSBsM+pbmYpmRGocEveG7ppRAxybNxUVu3pX3qG9gRgri8V
         gWS/cJvCYYbisODZCixjCbuk6USuhk4zn99ubDOcyRif4LLNwdYbb3Iy48qn23/mPIuu
         NqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770747256; x=1771352056;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+ncAZEnZ4mXiLnJbrXQN6RzFcWEjU5z/GGAu5tYy5I=;
        b=VovR+MiHKN1JEcu9rffLA5SrnKOFIoZ3laDdCJXt5NYUXUdj+juOrLWRxkBb86zhKZ
         0n5n9eKo5wm9GHEToiUVYTZFTAEaxVJ44FfF9AOx3C9g8LcZOobdYt4jmoTi2chKAe8E
         1GpQxZ2RcHiyhhFEjuw/k4BtYWDG3TSrcGh6dtZ1wlW1HN2GeOW7x894RJO1o/I+89Ud
         yp8NR3PlDj9DGs0jHiQxP720PS5rBihZlarUrR6pB6AV/yXhDIdLUlR1kZEs5sTLri5Q
         Vh02LwX1oFloS21iBHkPInq7pjy7N1iLCX3MTzAR+cwOVztq6oAtpGgLfi0/olTO8vfL
         +W3A==
X-Gm-Message-State: AOJu0YzPdebLsYZbpSBTT/s5mtCP8SRH6yC21WiYbQzcNHX+e5Es9EfK
	7k6ZgvSHLhBdr0lXaPhqQpYofGozS3/vdpWAwoPsSKGaI123lohbIz/m
X-Gm-Gg: AZuq6aJk4kVRAoRRj7aQlJrLSEhNI/l5KkyYNy5aNhoAxHR+FEpe6ikrjKAEJKLUeW5
	66fKJjIp8ZWcLcz16s1akZPh2vQGErTwMLAd3IbHLeLS7uuW0bb2e9Vqqe5YPnmIJr692PWBHRf
	kdWePrY9s595Ut7+qh2gk0/YQi297/STsnWuRF0Bf1c2Mgz/oIhsxzPhGKxgq+T2ZnWKDUt11RI
	9cZbQQGSDP34DYI6lM2vzRh6Zo+qMqAaCsEPvbDiCcH6OWrT46fi6ivNEeraae/6Px4MeX/NnXc
	Z4a3RYJ/GfrBViDtcbIX3Lskk8047O4FcuIqKKkwR1ubBpS/2rIJz7pTmfo9XZWLxjlZE68J2bh
	mBgbJFNU1qrz/QHLZDvGPQOrTq3MLgs2fiOioY9/HqF6ZWvYtouCrhnNNQ/9CqSvI2rUXQrjcPC
	0CbyyLQFMuglJzPdVkGb6WjPzU6vYz9CaDR1Azsw==
X-Received: by 2002:a05:6a21:e8c:b0:341:c4e5:f626 with SMTP id adf61e73a8af0-393acf9a9a9mr16114957637.7.1770747256058;
        Tue, 10 Feb 2026 10:14:16 -0800 (PST)
Received: from junjungu-PC.localdomain ([2408:820c:9008:ba52:c4d8:99f6:9031:4ec9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662e6ad4esm3400265a91.6.2026.02.10.10.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 10:14:15 -0800 (PST)
From: Felix Gu <ustc.gu@gmail.com>
Date: Wed, 11 Feb 2026 02:14:11 +0800
Subject: [PATCH] phy: ti: j721e-wiz: Fix device_node leak in
 wiz_get_lane_phy_types()
MIME-Version: 1.0
Message-Id: <20260211-wiz-v1-1-fdd018d02f33@gmail.com>
X-B4-Tracking: v=1; b=H4sIAHJ1i2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwMT3fLMKl3LRDNzMwOTRANjkzQloMqCotS0zAqwKdGxtbUAjc6REVU
 AAAA=
X-Change-ID: 20260204-wiz-9a67604a034f
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Jyri Sarha <jsarha@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770747253; l=1321;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=D7LsG92Q4V6EDnOUhkN7SNCkXGuQ3EoxFFnH36KITpo=;
 b=Xh6eJkuNPhEC5Z/GHopWdIYM9Ju6iKGaR6m5YBn8yvea6ZODUZ+ZdDUpD8FsyToVSlfZckp1/
 YWzy79d9kPTCCsUck3OOd2HIQluLzXoeHh+PenibrPM18jIhFyNwWTi
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_101417_572485_CF0C58B3 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
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

The 'serdes' device_node is obtained using of_get_child_by_name(),
which increments the reference count. However, it is never put,
leading to a memory leak.

Use the __free(device_node) attribute to automatically decrement
the reference count when the 'serdes' variable goes out of scope.

Fixes: 7ae14cf581f2 ("phy: ti: j721e-wiz: Implement DisplayPort mode to the wiz driver")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 12a19bf2875c..904541e9138e 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1407,9 +1407,8 @@ MODULE_DEVICE_TABLE(of, wiz_id_table);
 
 static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 {
-	struct device_node *serdes;
-
-	serdes = of_get_child_by_name(dev->of_node, "serdes");
+	struct device_node *serdes __free(device_node) =
+		of_get_child_by_name(dev->of_node, "serdes");
 	if (!serdes) {
 		dev_err(dev, "%s: Getting \"serdes\"-node failed\n", __func__);
 		return -EINVAL;

---
base-commit: 193579fe01389bc21aff0051d13f24e8ea95b47d
change-id: 20260204-wiz-9a67604a034f

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
