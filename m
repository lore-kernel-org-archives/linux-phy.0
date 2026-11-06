Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C765F606A330
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 10:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JoTm3UIM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DgMOiEkp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=y1ym6a51z6w24YiQD7+tOYKWpHlx0v8Cw/H78vWy/NE=; b=JoTm3UIMPSqSP6QMYD+3EmOQcw
	r7wJS4yVGxvm5x4xTcBGZlYEsVIl9sE/+kpvYymlq2McvbcSHSYTln5mFWMdYx4l0mTz8DqUFDzU3
	yMRoBFbhzAMF+bg2KV24H8n3ArnzLwDDKjlWCixVah+w1bUZLvntgKAuDViu3Dxc3OeBlRuQmE0f0
	cIBIy2YEm80xg5GvwFDNosZmfpT2z8wVmRbDhLVmNQLPZT4GzmJ7MBPuCOSUN4NSmoo3FafhYILoy
	eb6lVqQoCXWv83Ft4beSUTTDOUKm8T/ccqY4ZBse/N/0e7B7+VOt+69brP9viVMfNb/LQkXOLteQg
	YYFMJ2iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGwc-0000000BsEQ-1hFG;
	Fri, 06 Nov 2026 10:13:14 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGwa-0000000BsCX-03rh
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 10:13:13 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4a35db1f202so3461975e9.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 02:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793959990; x=1794564790; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6TKu6N+rhcGhq3Fl4eGSM3fARudAqk/2MFphQxFlg48=;
        b=DgMOiEkpaPJDuLdWSVRLIuASr+Mr+DAbU4qlRyRIqc3CxuaS5gmCVvBNsgl5N5Qzo0
         57rlfVv/FM7O/v02J1e/GHD8QsPPzBkCEsWQeFUT9OV/fyq/gjBALy4J+8a6wNv/XcIZ
         adch8wOJ+668cWx0RcNEG/R7jHAPh9wPmeFtRIxZWyNkAMd82RO2fxHPzVwy5pu6vnK9
         SrswpL4Wv+hfzZOFTyaA6fJafy76Obl2Dx1S9uCTKkmxSbuX5/QLw/Zi0RZ+aA2sw9Y3
         V3NKh6H/GzvJ+0vtEcrToLtvsD5Qx45DCSdwhqrVU6uWse4iN5EKFCEnjNAYIqHM9g7p
         AAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793959990; x=1794564790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6TKu6N+rhcGhq3Fl4eGSM3fARudAqk/2MFphQxFlg48=;
        b=HDAv6Ba7scpt0uR/S55frx2BwtDDSG3iShpvTIzU8fk8v+viOD140OkECRge3Uk/a5
         Vi2eP/L9ZVpqGs7+6++hn02Z0kwRg2t/KXIl4wrNOk/Q2nDNnYHL4s9Uz/N//xjXcgDs
         4Dr2UbN7Qur5Qio7f5K7YA4j306E/1itJOKyAacXnqL1SWl1q48nysPOlUpDPnhmMUBi
         8+q/QO/1McYUiOfaDv3HmOQc5X4+u6K/gXyl/3DlbP/rBkOqOZbf2+6gDILccdhswXdc
         1pJUkNrPVXcoJDDhfGciZFvrMLQ5EaWkav6ldyC0bXOJ9nc2bnWj+y9Vg2NPtuVLOD4d
         EHeQ==
X-Forwarded-Encrypted: i=1; AKwUvBxAW/5QD4+tQcFuujfbe7R9h5fweMOZGScoYNEUI7tsdlYz34VnJS9zbQzre1UWW5RKcWfGXtsaeJs=@lists.infradead.org
X-Gm-Message-State: APuU4Z+KlJeYfj2w9Ktubq/E8NWP0CF7f3BshjLgsJNfxoLrgxPDf9O2
	b33LDNl5yApvBGtNcMHW8VvAJPv/aDG/cS+jmbwrv0M5O3alt7HU8387kilWiv0U
X-Gm-Gg: AYBFou3RLdt9JAQhzxwiuXvo/FLxugSx40WqSkrgIHxX7LLArpBpOHRe8q9dfopPMqL
	C5Zuh7ZB/xvyPbFydfk7noDfmNK8ej9rgHXLjQd9L15TRjzRuX+8vZAsOvuyhva2OlXQ4Q9yBTC
	+9EulXwGcLhJWvY7Fg2/I71wH1LZ6xRsEuyhWVsYpm2henoE+ScCaRLmHyGB3XeePy0sjGdgMD9
	7/yUi2Imi7RZgjeNQFSvsiYkrftEPBS7l2l9qFMWvqvizlAr+53EgMeS+H9MAKIaHHwGql/N7L9
	AqlP60OGnhDryeAhrAKUxKDTXAgwvepRy3jYGzol60s8RbxMl9GIdfPCLZCgwC7oSeFOW3Duyu3
	a0TlEYutxu8lNvO7tOAnXb6QE95/2I8OZU6Gw/xe7U7oVeGhVYw/EbWisbTJZPI9wnVf2XSSP1U
	RJNrWc/e2KjcXum/hoKDRqJblT/Mu0HPcoCILPZhIACm1mC6Gyb/oXlJZje+h4HfoV4sXyr+Ns+
	nb8gmXYucz3/mzIg9WXKjD/v3ZpmgGJI757Dy4cAdUzgVtpaih0CNqAC0tQmF5CIy2KiAAvSCkT
	nGyLfh5V3RrFRKLe2qDi902Q04+AjYDUyvo=
X-Received: by 2002:a05:600c:8819:b0:4a1:e00b:a0ea with SMTP id 5b1f17b1804b1-4b6db2ba2ebmr27307405e9.1.1793959989827;
        Fri, 06 Nov 2026 02:13:09 -0800 (PST)
Received: from dev.Default ([86.127.229.203])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-492d723310fsm2934846f8f.32.2026.11.06.02.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 02:13:09 -0800 (PST)
From: Agustin Santiago Isasmendi <isasmendi.agus@gmail.com>
To: Navid Ghahremani <ghahramani.navid@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	arnd@arndb.de,
	stefandoesinger@gmail.com,
	krzk@kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 11/24] phy: zte: Add ZTE ZX279128S PCIe PHY driver
Date: Fri,  6 Nov 2026 11:13:07 +0100
Message-Id: <20261106101307.3936492-2-isasmendi.agus@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20261014072109.1759502-12-ghahramani.navid@gmail.com>
References: <20261014072109.1759502-1-ghahramani.navid@gmail.com> <20261014072109.1759502-12-ghahramani.navid@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_021312_055730_208A9ABB 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Navid,

On Wed, Oct 14, 2026 at 08:20:51AM +0100, Navid Ghahremani wrote:
> +		if (i == 0 && port->has_cal) {
> +			ret = regmap_write(zphy->regmap, CRM1_PHY1_CAL1, 0x00202d5a);
> +			if (ret)
> +				return ret;
> +			ret = regmap_write(zphy->regmap, CRM1_PHY1_CAL0, 0x0046c24a);

On my unit both read back 0 after boot: there seems to be no register
at 0x1b0/0x1b4 in the top CRM. The vendor kernel writes these two
values into the port 1 controller's "ctrl" window instead
(0x09600000 + 0x1b4, then + 0x1b0); with this series those read
0x00203c78 / 0x0c46c24a. The link trains anyway (the MT7916 enumerates
at 2.5 GT/s), so it may only matter for signal margin, but as written
the writes have no effect.

Agustin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
