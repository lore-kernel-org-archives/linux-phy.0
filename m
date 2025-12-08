Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 076F3D3B7F3
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 15:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSk34Frm9iheWQBK/Vlqa4GccGY7G7uFLGaxvGyS9z8=; b=x5JJbmzG78q/vQ
	EeqwXOSRpMunx6awlRMk853f2oD85Dx5z4N0SfT51KrZdHgmoOFK7rKLStM6N3RHcWW84mOfKCGar
	pgGJMHYMNzsTO6U06ReZDWKKG8HPjdPJeRV/EUYhG+CGaeZ4l5Et7xkAyy9DWqP0pMrBu3taZKHjE
	isDyNb+kYKEy1nofUte2mJ7nnVWKFIAPqXvC13QVSYJGSBSxU5GS8eIP5Q9fwlXZ8elHvLRKwmqKm
	bdr60B3t7VXkGY0jgKFhyPLVERulFj1TujzqAvLDydTdEMauXMJRGgGYtmAMvebr95P6z37SiNDaK
	XoWmzh9ihHqh0vWM7HhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdVP-0000000DGci-3BHv;
	Mon, 08 Dec 2025 15:50:31 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdVN-0000000DGah-4AK6
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 15:50:31 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so39022725e9.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 07:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765209028; x=1765813828; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9vxAtmbsc9sfd8WNWIA8+tguwKaRWIk3O57bGcLZew=;
        b=ZGv4AlF+T779qNpp9dSfZI/iuXU5L4QDVBzHgO7+lvlhisRz6ft9TaWB6jbkggNu7Q
         iKwdDsdMkrwmFxQftknLHBVAEy66IAlEqf5Im+CIXnSfY4zWjDvkayHKKMqE/YqKWavI
         U58GnFKbitPSocwS7VV5OZaIl6FrscoJF8E6neLEBtdMLWDAJ3cndVcjfl4T/v2u0/fu
         10nP0/zh7YXKNaf8O6/1xgZr0bnQ646tLuTIA8iqd0SvJM0HBD+b0aFAMUnhfSlQeS9k
         Y2Sy9wTetkjXJ08e79Oq8zGi2Zur5++qdjpuXF5NkEG9n/E6aDPpBZmj4SusD1kXJpuK
         rODA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765209028; x=1765813828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E9vxAtmbsc9sfd8WNWIA8+tguwKaRWIk3O57bGcLZew=;
        b=k4abZKgxyAvc6HgILKdmmC+7IuNjGGY/HqALSoAWIDpFPGqM9Ezqh+YdaPc13ueqox
         QUxJpINc4SMw8ozL9e6p41PX2Q1LCYE5AlxwoIS/VB4wtHiK8t06/uDI80chFo3OavB+
         IvTpx5cNMA6HHq3++ZQ9FuM+vLxHFRkUEMjZTqF8saaLCr5Z5caaLgcFJ4xFPLvRcD18
         tLOotyJhqPdkerAYLaAdql+rBr28WYTBSSFEoFlQGSkWBzLNgGOdYJYKtgL3V34mmOoI
         YkfWnp2Fm6K8HNfUgHMycaamWEm60C6JU7k+jtXHCoo0BjWeh7S71waH4wWhrMmjJ8vO
         kgOg==
X-Forwarded-Encrypted: i=1; AJvYcCWZyZ9lwZNKdNf/lihUchXxC1QNiEYuORclbBXDktq1b3nsWoIXoepe4mid6TAIjTHTfs2HfdZkusY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVxVPbluCUrrNCHIZ7R1pO7aAL+akZBiEf5J3uHLs4R5QrcX7d
	Cz8pl9bWds2FnFs5SE3bq5vyHAycEWBSGhy4cwWP7fU4DURmgwX35DAR
X-Gm-Gg: ASbGncv4XyTgRrcUx66bmyBaXzDuhyoyDrj9O14u0KMh+TkQHo1uVjow/OsKHjWEZZ0
	1roGC3YdtcyROMS8PpFxT6IayRr5HrbjQk5BqfdmXnm10MxkjjfaFv/ELBIFHf1THAFvzwF3Pgm
	6mo8MHy7CyZpC1euJIf6+67oC3+ylB+srsjXYIJy3/+GIfSL9fG7jXcNXKqDaEyx09kwVi7Fr2X
	qlt0a01revkSelaVG43jmyzZjdgg+c8fmaDcjwBLmPDhBoryRRYKTUeHXlgjW6RcfhGNrap+ZIm
	ZdSxiJlHL561522hrPR6QR3Gb2nwo8QFQwLml3uP1rF1a3QUCkxMv4XuqrVSZ78Vspe4xfXKva+
	OFe74xhunxAU9haGdnK3kuYjWv71nZm5YLUHCwiEMGl8ysmldmne5d4sO6HRLX2tk2iXC7d9+mD
	XnA9Hwcq81z4YVjeqC75AZOHvh3f+YTN2Zug==
X-Google-Smtp-Source: AGHT+IFljt5YHUzlULBDoRx85WjVasSaNXrLqrRgyJpEfzkXWUGKm/KRhMnTMpRbYvSGWx2zxHRZAw==
X-Received: by 2002:a05:600c:c3cb:20b0:47a:7aa0:175a with SMTP id 5b1f17b1804b1-47a7aa0175emr11840195e9.26.1765209028120;
        Mon, 08 Dec 2025 07:50:28 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9aa6:8a23:82c5:2b7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792b150878sm147717845e9.3.2025.12.08.07.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:50:27 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
Date: Mon,  8 Dec 2025 15:50:18 +0000
Message-ID: <20251208155019.136076-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_075030_044722_1CADCD5D 
X-CRM114-Status: UNSURE (   8.73  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046
provides dual high-speed CAN channels and includes STB1/2 control
lines.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index c686d06f5f56..c53c4f703102 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -23,6 +23,7 @@ properties:
       - enum:
           - ti,tcan1042
           - ti,tcan1043
+          - ti,tcan1046
           - nxp,tja1048
           - nxp,tja1051
           - nxp,tja1057
@@ -84,7 +85,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: nxp,tja1048
+            enum:
+              - ti,tcan1046
+              - nxp,tja1048
     then:
       properties:
         '#phy-cells':
-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
