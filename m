Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072C9606A31E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 09:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FiWc6YR/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=dyQPuttw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QJq6492s
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=z40fE++VTk3jSNAkyyaRvNzGLtny8wBPvA5EkaSr+BM=; b=FiWc6YR/0wBdJVVj+PmOCuz9f5
	WILNheTYdhBkm6/iMJw5sqmqKqmt0W1s6S+SMJ/2M9zClHrDn4+sErMbFz4AafI1wLli0005RBph5
	YviLZQBKQBEaXbvZ1LTHIYr1FBqFvBk85IbjoDnJB5WRm3Ng/Sog67PoOFBfrCdmB0Fcvu1u9j+xI
	BSUpb6R2mRMmjYhSrxdDY7pv4XJQna6LnKLD1KOAw/JiJegpOkAgz3SX5RqYGSnJxzVzn3/zW2BWL
	3LpaL/ahGbioxq24BS5ZzpSRYk786BhBEufoJhmsz83RS8RuiyiJuTkhUtcKmMwnQGGpqsvUePmw8
	3KgvQTIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQHX-00000002hef-3l4k;
	Mon, 23 Nov 2026 09:24:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQH9-00000002ha6-48pC
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Nov 2026 09:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=M4dNFuYhEPr52SA+ny5yZ0o4zoKtkWjJLEaqwoQdUao=; b=dyQPuttwtj1nIocoidOr70Y02Q
	CpiEqUZFb1RR2+7DaDC/4O8BEVhglAX0Ac2E9U3Q1ZnxGU9E8VAk2XBSzYzgFIbcJhuhVPJv8e/x+
	7iGQRwnPJEH8XA5GBiOyHdinzCoEJzSXvgWDvzJS/VBThlRbnKVCF84oPqVSrj/7jH7tcU9bahYhf
	RHk2Zmm3EvaipcNINRvb7K71reYnZFL8Ke6BTao3ZJfFZAJKcCwSvctegkp0lh2UwbB5o2Ry5gC8T
	2ehacaGLtTYE7turG6ZLUmaG3m+ca2WII+o0o1uinH7hZfhUMCcZEe+6PEbVhGCZG6v3zRd5C2CbZ
	g87lnJuw==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQH7-00000002uuR-1E61
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 09:23:50 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a1fbd52ab6so20372115e9.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 01:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795425827; x=1796030627; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M4dNFuYhEPr52SA+ny5yZ0o4zoKtkWjJLEaqwoQdUao=;
        b=QJq6492skpEsLoqLlAp+K8TGjW4iMVtbGojWVFx4uKa6K6tLfJKrvkijCBpsP1Coch
         Oq03uqixifpjgYUWYdXch8px3nkZSGElvO+je3gaF39T35Be1Xurv2fI1N7Zj4E3Jl29
         C+ujQxppN56ECsALMB5nuiKJaC0DtJ/rXvb1CRuSwYHhnCu+QiB6bD/6STFRGXPt1Ppw
         +VcIOy4S2ip6F9++TLs/W4/jt5owOsB7gHw4wdJqtGhQ8Nh7N+bp861GYCghXM7KTL4Y
         OBF1pke8RaxPSaFuETm4wzE0woefDw/NsBwqEyPWumRGPNQXzkHBnThyb2ZuQkXG+Bwn
         hIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795425827; x=1796030627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=M4dNFuYhEPr52SA+ny5yZ0o4zoKtkWjJLEaqwoQdUao=;
        b=rKZKJFJ6o9Rs/F0rx6xcff+sroVpxgzpw90ocpbXWI0Mr+oJkc9AGCD2fX23TWqgL6
         ghpbjzuP1kSiba46ZhcMkScwZiRplAEW3QnOyxyiLERkQQ0MXu5ox59H405GPgV8Qgi9
         SHpsH2/aTR8y+TDLeUdl6qOtBWZRCFY7kOTxXuhd4SuBgvDRlrUe1zhy24Lxo2jAdiUD
         tY8LYImxTWIKXL2Li/qUlUf63ScxnGQWf+k4Earbcc1qtrsVlfueQ+M+UYnmxwr7vZMF
         DDCf9iiGGpgArnDvN4x/OgKejq+BvUgKt76o95fvK937y1+jOOV/Rqr5Ljn0rNZg1k/2
         sjdg==
X-Forwarded-Encrypted: i=1; AL+hErHYok+rxcLKHWcZiqenCEf6sSGRq4srk6c+ZMaJiKHHXuFYIK2oJMF9zDfDtUKQ/NNMwvmsb4Yy9M8=@lists.infradead.org
X-Gm-Message-State: APuU4Z/lKrVBg5OCg5xJjN/5Y5CNE8Xi52R5zAR3Px2Oq6EiSIjxiLLb
	3sFx3ctNTQZU2PfVIa2VzfO5cDQs3qMKZsDed8GMvtRagRgiNlcXG5Me
X-Gm-Gg: AZFdTZcwAn3FmqQeaHVIhfUaXJsF1BOeWe5vnq+g/6BC15Dfd6ToqOm/q2Wmq85VR0k
	Hf0zLciHrrgrzHypBRf1m+K4Le2ELAa7lkMcdEBpT8RBPVFZ0Smvp0Jq9Xgwwrfna2zedN8vQn7
	2D/6gj72PgT0sfKSOB6lyjLweSqQVSiNfRPI28Gun/gHcj/BC8uUTL3dhQBGqKzYDngJ2WAAMwS
	ievRMpbbCQE+Fy870+k3+J5HnHzrc0VI411rqvvKRcRP7nj1judQiTyZq4pDraNZ2rlF52WjWmp
	/oKA2rF3It9nxz/uMC3p3UeZ1lZWkTILCBqx90SxspiUNmIq0VPTpx3rtmxPQjuTF6uGmMzpVUn
	jq7tucQvX+qHoW5NJXhUev0P+soRm+vvkQXyQmJoLpRQtEabkQV4gDpbTnc2eWJoNs87vY40kqC
	wSZTRROVc/GJIOlvOOQ+RWp0riF2uQfRINA4HHONsGVUcuWejCDiGMLHAGzGDfd4zqEuX94YoNM
	PoqgyWCcsdL0eGt+R0cKrOwMK0Lqk/bmGsb95PreGoVNmLttZld7xqiE3hj1XlIJz431y6ogOXp
	6HFtG8dOX+bkewHhafz8OWE2uVlgLwT4wX3MTum3/32IVWJW30Tfg9VbcK8Kx3G/psj6LBEO4RE
	Qb4qblUNC0f2tqGoMNxJyJ/JCz9Dh2GCPbw==
X-Received: by 2002:a05:600c:b85:b0:4a1:f720:74cd with SMTP id 5b1f17b1804b1-4bb8892ca5amr224121685e9.24.1795425826605;
        Mon, 23 Nov 2026 01:23:46 -0800 (PST)
Received: from DavidArch.internal (catv-78-139-0-46.catv.fixed.one.hu. [78.139.0.46])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab6bb989eesm21060655f8f.50.2026.11.23.01.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 01:23:46 -0800 (PST)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-kernel@vger.kernel.org,
	David Virag <virag.david003@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos7885 support
Date: Mon, 23 Nov 2026 10:22:38 +0100
Message-ID: <20261123092244.1792040-2-virag.david003@gmail.com>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261123092244.1792040-1-virag.david003@gmail.com>
References: <20261123092244.1792040-1-virag.david003@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_092349_349211_5D6FE854 
X-CRM114-Status: GOOD (  10.06  )
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

Document Exynos7885 compatible.
Exynos7885 USB PHY has two clocks (ref and phy) like Exynos850, which
are already described in bindings.

Signed-off-by: David Virag <virag.david003@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v2:
 - Add Reviewed-by: tag

 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index a1b3d9e6a094..f644a4aa1e95 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - samsung,exynos5433-usbdrd-phy
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos7870-usbdrd-phy
+      - samsung,exynos7885-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
       - samsung,exynosautov920-usb31drd-combo-ssphy
@@ -234,6 +235,7 @@ allOf:
               - samsung,exynos5250-usbdrd-phy
               - samsung,exynos5420-usbdrd-phy
               - samsung,exynos7870-usbdrd-phy
+              - samsung,exynos7885-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
               - samsung,exynosautov920-usb31drd-combo-ssphy
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
