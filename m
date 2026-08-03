Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB1B1C55179
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 13:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aAbflO4GbsRXogYeMda4Ajp2rbj/uL5U0tWGR8c/SmQ=; b=uuxMPO1SQX1iev
	/4IXeGeK03rsIf3YMokCFwZOaPs547Uq36xifIGuuMd+5I3GTa16nDyp1o82kA7QHdHdyhQyBxam7
	YivfOu5jWpl3ZmoJj10FAZM7q0KskI68UMyprCAv3ZyUTs9tX3/iQ7KAINQ64BB58byQ/xcVd8OsN
	FoS60tTfHkCqbPXq4FjQv+4KF1KuxVo1A3A1GL/muKBOxR7LlRubuRyetfPE6XOXOT0V2LDRdlEW6
	qdp+5GHSPlBF2bm1+hEsT90CVIcRKqYR+9BaHdl71+mh81YDl74YBXlVGbAURSq4bzCXFRIjibpcq
	4MBS4qmWf62k4TDMZx+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsOI-0000000H7wy-1jeN;
	Mon, 03 Aug 2026 13:07:38 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsOF-0000000H7vx-4ARq
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 13:07:37 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-383b4a3755fso3230808a91.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 06:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785762455; x=1786367255; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=cRpNOSp0h3L0rFKlXO5YQxhArCl8oHMttLaGl9wZm/w=;
        b=nnj4Kr/hzxw3UfJB3Pjs18C0KWX/60vC5n9pbuxdBvDVknihlumWBVUVWJEOUhCd8R
         Pl1kMPYp1a0YjP2dLDsWC4dVh5inypFJx5AaRsqmLzkDi4eLZReFijP8WaPzn/hBu+F+
         ezJjRMY3HtAWi0+78glxfXDwdbeVC+8ankfir27d+yMCelK4R9sOZQl2y2smEuGVQhXq
         ilZABSppma53YhtNTz1NL5THiwX9kgnpwvBnLOglC6dy0gsW6pQhe3CP87sFiR1T0i0p
         KA3kZZzcHpqh/Nte5FTSuNLfCWnw1EnfKLROe6Rr0eShR2CVpbQz3Jk8fJs2ElDBS+aT
         OtZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785762455; x=1786367255;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=cRpNOSp0h3L0rFKlXO5YQxhArCl8oHMttLaGl9wZm/w=;
        b=cwK/47jjAHkxRnfnGn+94sUtfakK81GfTY3THCIN9tWH706IyIOV9BL5A/fYOfA3y9
         sJ9Engw8IB5UStuWKpVvcWnW4FPsYl1VXCv4/+R8vzIwDVyXzyd9uDA3sPYHWvl4Q8hH
         Y5tFod8LqzEgltYdxO5DzGYsg/1LYqbygT4opBbjmj796nAdrl+y9zOOcmYu0IxMuROM
         FfSrx7B04tXaLSyGQMkHOBmJJZ79FPUFWexVfX8AjGS6y9cRHFrsOKi7IeTkNrmfpA3W
         DIj5U4w5+datAfuWIKx0HjCzWpROoUpNlFT/buCs7m9qoKKrCgw7lz8gh0begJUsEmeS
         qnow==
X-Forwarded-Encrypted: i=1; AHgh+RoaMVfndUX9OyTN0taEV3ODmUVq3KIPAav1mZgB+ctu3PjCgRsdjFzQyci5cv4/93flrhjtvaDbszU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmMFHUXoQ5QBS/ckwr+2UnlH9nLFuu/fKxAN5RMUm/GOoJrgnc
	ocn0rXgc979Blw8Jaxni078bxBD6IoDWfflfmPZQZI8Fmstl9XWqtYUu
X-Gm-Gg: AR+sD11URR0hpB20SQ7N1OY49hD54d+X1162eyTii7evdqYYJyLy5g+caNk8cFmZtHy
	mJRXIuvW69m5gLseu0N1pvQyILe8w+qEMSqWShA0F3UUFgHjvCZ5AzdmqC/I41Xn8z/otSb93VI
	/za9c3/Z+x8nzLz7JtrNiojRrFREi06mrcNXP+CN1kDU9WCuMw26aCBfTAMCNEgCAbOLW0gIw8A
	2J5qIAPx5jtmTAk1aEELOiXboVlwuAdZYy9yyVpkAKWSiWIJyxGXplIlaEQfs2EmOmDn/Qxyyq4
	dODEJoFoEObQUqtBl4m8HIKMgYFFKL5iNQhbLJx0G3vxBlWpmWn4sL9cmM5qt4HZ3VfOKkG2W6E
	bW+/Er68Dq/DLZrDgNE8xv632GlbwDvSc+RMwARrMfo3qHXTCOvPkmD9/Ig16F4GJobeQhFi9fe
	ZIS2O+QDqgsG6nVG8OtoUhZwSKpzMqUkU4Z1iEWgt0gt01TZ2WWGr50WL/jRIfKXBLUnX+QTNh9
	TJfx5OEm9eNjn83JTvtjzmOmk2VmPEURX8MkA==
X-Received: by 2002:a17:90b:4b8f:b0:38f:9b7:8c92 with SMTP id 98e67ed59e1d1-38fbc5607a7mr8532952a91.34.1785762454725;
        Mon, 03 Aug 2026 06:07:34 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38fb2b663efsm2485544a91.3.2026.08.03.06.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 06:07:34 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Mon, 03 Aug 2026 21:07:27 +0800
Subject: [PATCH] phy: renesas: rcar-gen2: Return -EINVAL for out-of-range
 channel reg
MIME-Version: 1.0
Message-Id: <20260803-rcar-gen2-1-v1-1-4796ea6e76d8@gmail.com>
X-B4-Tracking: v=1; b=H4sIAI6ScGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDCwNj3aLkxCLd9NQ8I11DXUuLNBMTgyQjiyRjUyWgjoKi1LTMCrBp0bE
 QfnFpUlZqcgnICKXaWgDqnbX7bwAAAA==
X-Change-ID: 20260803-rcar-gen2-1-98f440b28b35
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Ulrich Hecht <uli+renesas@fpond.eu>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Biju Das <biju.das@bp.renesas.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785762449; l=1170;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=mgNbfurCgEe/9LJSMHHHowLjwvDoD6FclLw6ncGPoTc=;
 b=tueQA/WphvbJ4bu9l8Nppp5s3Q3nHNa8F151AeQlWVIilNf4EmzaitfNkJ6rvdlaWIfth3I+d
 TrLTxMQvTEpAYNM0WFNXJ1QjMdjJSBSPtBgd7IzoAxV/5YJUBbIFYXj
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_060736_040066_4AEC9B42 
X-CRM114-Status: GOOD (  10.72  )
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

When of_property_read_u32() succeeds but channel_num exceeds
data->num_channels, rcar_gen2_phy_probe() returns error which is 0,
so probe reports success even though no PHY provider is registered.

Return -EINVAL in that case.

Fixes: 1233f59f745b ("phy: Renesas R-Car Gen2 PHY driver")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/renesas/phy-rcar-gen2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
index 6c671254c625..f0858d8cc705 100644
--- a/drivers/phy/renesas/phy-rcar-gen2.c
+++ b/drivers/phy/renesas/phy-rcar-gen2.c
@@ -390,7 +390,7 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 		error = of_property_read_u32(np, "reg", &channel_num);
 		if (error || channel_num >= data->num_channels) {
 			dev_err(dev, "Invalid \"reg\" property\n");
-			return error;
+			return error ?: -EINVAL;
 		}
 		channel->select_mask = select_mask[channel_num];
 

---
base-commit: 415606a7be939835db9b0d6b711887586646346d
change-id: 20260803-rcar-gen2-1-98f440b28b35

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
