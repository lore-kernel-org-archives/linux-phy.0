Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89E77C61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6RXMh+82cHOdXc/JdkcnMCQhfH1wZeyvygYHqEq6gdU=; b=XiW63gwxLTPEFC
	u0oea/E7LJYrYzS80qzGxO+sUmSq++uxGBnOATUo2maWEbdsUm2TlGVx1K5lCIEA5PA9CBZHCnlnO
	qUF3pg3z229gLMI8SXa1rRqMuJ4j4p2PcB3osbNirxw5qgs3Q176zCIUJnRLqApd2hKGQpeEioODa
	jULE/D8nZrpLf29vfOFB9ovI8lf0SYJvzOpJS8txeQMEzOtPBBqLPzQYdZuEen27YJhBFqMD1PdFy
	kw/hqxUtqKxgbOHsPB+SLyGukJ+W60jZxBvk5jt8CBDvGvjWG98TLCSAZ9UJe1R/35lx/OFVPtNCy
	sbdSwDBPUcLnpVs1oQXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BLq-0000000AeUu-0jV0;
	Mon, 31 Aug 2026 23:23:42 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BLn-0000000AeUQ-15bL
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:23:40 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-38f57e312ecso935294a91.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788218618; x=1788823418; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=1wPQaEPiJFpIFKFk5jJg7O8BkD1EI/fdnyjnPPYqLy4=;
        b=si+VAl4xHqKoYt4TJHUxCUFIfIFXdqP7GFG+RfZaRAWQk5wwXLSdvdEh0YDJZ22M5t
         N11avURaCj4Y4+ZD7zqSV5Du1O7gNqo1KDYu28IAq9xFKlIdhbx78N9HxA6WCdxa9Wza
         tGnz+wLJZH2iLCSbWyIGY/I8g8fR3bRBQO9o4CRBbB32nbYb/wvCH/7gVObdxmHdriqm
         NbnNrmJxBcYifr9P366huLuWovLwkUdjNls2pEnDFrtSpXBEqDXVmOlchZMnr6Ju5wv2
         7Ubo/xqHLWdwfbM5kj5M4UZTygDRdbPEj54kIa8L96Ydhew33ZBetElMnm7/YCQvapL6
         HRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788218618; x=1788823418;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=1wPQaEPiJFpIFKFk5jJg7O8BkD1EI/fdnyjnPPYqLy4=;
        b=Eht/P30lB6tH9buL23BD/hizlNgwZw/k0E8BjEELIRm2UFjYtLXPLbE+nCzGS9cIrz
         nHw9ZQXzxH548c/36IlYg0sA5aZtNIO22DkGSQMrT+AgrEVrfAQn9+98MsW3YpS7c5Em
         gTpEwRWha1J9paLriZ7PXAfU+42G8GcgQs7WAkol/0IP4jocxiN1G2jQE+s4/IEqbbMs
         YqGGjGpTV72/h5FAMNOMY8n9Wln7IXetKjDdLM6gfDPuXYivjnLgJDXjNGTotC3Nuisy
         OyUbZXoAxAnUza0Pio25l7kYEihm5WHOThDBXp9OUYWVEVWzC6+J9NQtmOT4MymDMQ+S
         vnZQ==
X-Forwarded-Encrypted: i=1; AKwUvBzaXQLO4LrXKa1YhKhStVBpajlVLh4bDH6NCpXCi9VoQTwQrnQhtJKaLHwlSWsFDfRmSCwKD74W7Dg=@lists.infradead.org
X-Gm-Message-State: AFuF++lSzu1oXvJl+IsEorJpvj1qnPqhUKVX2LH3Ac3KddKJ20si9CJn
	LaBJalPmMIOHJiJ8+NIif7fOXgpjq2+Oeh5/RcHsD6pTf3zwtI/80+QG
X-Gm-Gg: AYBFou33Lg/wMwWpcXxqQO9ofe10eBOhTcVQ2c9wur7j4ChJqGcVHnIvG197rpGuI84
	vXSfPsRtQdi9sWBvs3I6ZY52RnEqbrLDNtMT+DyegwE5+bza/urks081fMUf0aJ25lw+S8sp0Qw
	F9Tjfp/BQn2OB/iE6Uu8sClqLXyJJSMPw8sQq+1z8LpZuusYX6zqPm7SKIgAu1uX7oLnutv02OL
	AUMBWgLRyJ3wUHtKpAU0jwAcuOTkAmwuPxrcZRwCGOHb1mkEhhcJnAog+7RsoZqMv//IahdOGbD
	oqueTnbUmdMGicu2g6rl1zJ9BnDSUm8IjcZjNAQFDIkPdd35yGmWMLIKJQ/F8HbEFIGS5cbT4l/
	xOIFo7U3J5rrYVuW6omMbTR+6ulZHiDJh9Ql/w0DkAZQeTf/hbtJrODjL9GfucbuN3VEUA5rGG6
	0Dp2CP7tymtXC4jLtcWNv3kWcrLKUxJoqfjxAXfWysPh7nfY/QpcWFY4PfKTycWzhv5MVsMSw1i
	rLhAHONYw==
X-Received: by 2002:a17:90b:4fc5:b0:396:63a8:699b with SMTP id 98e67ed59e1d1-398ba94e732mr16798419a91.1.1788218618239;
        Mon, 31 Aug 2026 16:23:38 -0700 (PDT)
Received: from [10.60.78.252] ([2409:40c2:5002:4362:354a:8f21:7ceb:c8a6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d75fc49sm1963213a91.12.2026.08.31.16.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 16:23:37 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Subject: [PATCH v3 0/6] dt-bindings: usb: ti: Convert AM33xx/DA8xx MUSB
 bindings to DT schema
Date: Tue, 01 Sep 2026 04:53:04 +0530
Message-Id: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32NQQ6CMBQFr0K6tqaUthRX3sO4KPRXvhEwLTQaw
 t2lGBPduJzkzbyZBPAIgRyymXiIGHDoVyh2GWla01+Aol2ZcMYV03lJR6SmKwo6hZoKKbTjIEs
 GjqzG3YPDx1Y7nd8cpvoKzZgSadFiGAf/3O5innafsv4px5wyqirTSFdx64Q8XjqDt30zdCSVI
 //j8uQqZ4WwSmkuvt1lWV6M8tOs9AAAAA==
X-Change-ID: 20260817-ti-am33-usb-4548f2e570ef
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788218595; l=2585;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=lhiU6/DDjvbnzvWKv8+M0o5FcxAg1VP+aI6rjwrIbvw=;
 b=pNNAoj+rP+n/nEWEzXEGqCUrp2oN6vGvO3dNkhf2xDdgx0FhG6t9HscKUjc8CMsqsvZqseUAt
 ks3qntcjLbWBADCMN/ZSv6/JducXplpgz4IXe9mqCtqFJbIYaJLl3tk
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_162339_309629_48F5510B 
X-CRM114-Status: UNSURE (   9.83  )
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

This patch series converts the legacy TI AM33xx, DM816, and DA8xx
USB/MUSB text bindings to modern DT schema.

The legacy am33xx-usb.txt and da8xx-usb.txt bindings was historically
structured as a single, monolithic file that documented the entire USB
subsystem (the wrapper, core MUSB controller, PHY, and control module)
all together. This series converts that monolithic text binding into
proper, distinct DT schema files for each hardware component.

Patches in this series:
1. dt-bindings: dma: ti,cppi41: Convert to DT schema
2. dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema
3. dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
4. dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert to DT schema
5. dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
6. dt-bindings: usb: ti,da830-musb: Convert to DT schema

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
Changes in v3:
- Dropped patch with dts change Fix redundant interrupts property in USB
  nodes.
- Rebased to latest mainline.
- Link to v2: https://lore.kernel.org/r/20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com

Changes in v2:
- patch 1: add interrupts as required property for am335x-cppi41
- patch 4,7: add pattern constraint for dma-names
- patch 6: remove deprecated property ti,hwmods from required
- Link to v1: https://lore.kernel.org/r/20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com

---
Bhargav Joshi (6):
      dt-bindings: dma: ti,cppi41: Convert to DT schema
      dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema
      dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
      dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert to DT schema
      dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
      dt-bindings: usb: ti,da830-musb: Convert to DT schema

 .../devicetree/bindings/dma/ti/ti,cppi41.yaml      | 109 +++++++++++
 .../devicetree/bindings/phy/ti,am335x-usb-phy.yaml |  49 +++++
 .../devicetree/bindings/usb/am33xx-usb.txt         | 200 ---------------------
 .../devicetree/bindings/usb/da8xx-usb.txt          |  81 ---------
 .../bindings/usb/ti,am335x-usb-ctrl-module.yaml    |  38 ++++
 .../devicetree/bindings/usb/ti,am33xx-usb.yaml     | 103 +++++++++++
 .../devicetree/bindings/usb/ti,da830-musb.yaml     | 113 ++++++++++++
 .../devicetree/bindings/usb/ti,musb-am33xx.yaml    | 113 ++++++++++++
 8 files changed, 525 insertions(+), 281 deletions(-)
---
base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
change-id: 20260817-ti-am33-usb-4548f2e570ef

Best regards,
-- 
Bhargav


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
