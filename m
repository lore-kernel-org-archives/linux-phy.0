Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 734C9C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 17:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjlUmQsus8EMNDRBZToxxq3vAzv6lzmfF9nlr1M0j3c=; b=QxS43Bjcn6rLQM
	vOZOu3aJBmo8S/ax08j3TjCexPRvpmnid3m4ascNNKZMgupLenM3vq81F6bBkYXa5GIfL58JLRkQ5
	GX9835N0SttoQCcKTvgjbuOj2O91/4JZhhKK257m5lCJtF5VnOW/vhGwWCCtEgj5aVWZyPGBSq0NI
	tme1zVWuxTko037VPh9lzsPqPubab9RsuYGzazrBpUV2f3UHNaB+CJpyvVA5aSGQjDvXaebzup2WP
	+QKekrQc6c4hZIE4O6lyUFSAJTOlmdFDfGOeRq3piA02cqa6TgZ7wosPStJdQysdyAhAAhm/3+IQH
	EnKO9B27vm33bNjZeF2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8mj6-001yPP-HH; Tue, 05 Jul 2022 17:52:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO7-00H219-N9
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+1P/duJvdktlus1ZsFziGiWJD/fMN5ResfOKKArVf08=; b=o1wi7FkwYrW762p4dmDWduKlTS
	reTKQuiWwqnUAqXU66yh4FM4+zJ8R2fK2BBNrzcoDGDd0JNY2LP9ZPn6QY5ZUjL+0Gh5eUI+jukSI
	4Dsj0zonGhy+/wySN2gM4RomVLc6NLhyINJ0G21tpfoUwoqt4RKi4wh1pLWW8gFmQwVT1K8hI6An7
	MmULnu2SamVQTjQCdHTD41dkkGDo/FdbUxP2T4kkcPQ7em/80qy7wLKE4jas2+SVt68gvnlE3UO0k
	QW8jnJKoRQXcXdsHjl6WBC9zp03tfcKjxBLM70pN5W3vzuuXRJK1PzUqHd7vfLoKoBviq48+vvIv1
	s8iU1bNQ==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBA-00HV6Q-SS
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B543CB81734;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 576A3C36B1C;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=73Ko1hdObvK4P8nQePVdDkrJQMSlxC4Gjr2GN4baZCw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LAqys4M36Jle5JGDW9ZjZ4TJrAFyTgnRhGow44MPh9K7hUqKHr8KE7Nk+bY24gKln
	 IiyQEkoO+oB40OStFsWCg7RWCmdzvRif1B14yqAx0JTg4T7A98do1ExeYK0ST7X/uM
	 +h7Tz1Qse+6C7BMyxjgQueU/3rjr1FCODioVfIKdmidnDJla5KhcaZyzs0/BhIQ1rn
	 WVe/YzNEkOV94BSWHT0hRCLTonM1YKTLx81MGoB+Zo4tRdqaML2/UOx7S/3wmVa2ep
	 l/N9hZd3pUYrwmn2+RJTgBkh3hWkmsbtA9M6eawC0sh4/T31DW+4DZ7FLHVDlPbv1M
	 ewDrEMFGnU9tA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xp-CK; Tue, 05 Jul 2022 11:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 21/43] dt-bindings: phy: qcom,qmp-ufs: clean up supplies
Date: Tue,  5 Jul 2022 11:42:17 +0200
Message-Id: <20220705094239.17174-22-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104915_360378_81A0434F 
X-CRM114-Status: UNSURE (   9.93  )
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

The UFS PHY binding requires the vdda-phy and vdd-pll supplies.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml         | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 4471f1b4fb7a..c4458d90d8b7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -88,6 +88,8 @@ required:
   - clock-names
   - resets
   - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
 
 additionalProperties: false
 
@@ -112,9 +114,6 @@ allOf:
         reset-names:
           items:
             - const: ufsphy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
   - if:
       properties:
@@ -144,6 +143,3 @@ allOf:
         reset-names:
           items:
             - const: ufsphy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
