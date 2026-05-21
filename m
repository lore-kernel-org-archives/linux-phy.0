Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 683F5CD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 03:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyjpGf87j6L8VUJHrfIY3wTmq+H9TC2PKBsJbK30Jrw=; b=WfRmd2Mj2gHFgB
	YWTFtXGIjvReCC6q5YcHnXnAvtU6ntmFP3+jHWxxh88n4gyFr1MEnCU6ZQqpPEtlIeeblujyeyvNu
	3pgAIH2dPrUiJE3Zv4ftwJhOfKsZoj6dIlvaqNTjR7l17rRfa02CzMyed0ZPQKX0Zr6q8P2pSvThx
	Ouz110hAV43ZoeseWXtlsHbhLtQ3n4bFdRahzsK+SMcOeuRSNlomkXRkT16Xu2CqvIHsYsRBSNXXH
	bhnT499HUCa4/LTL/DpC+f0mKwoKGP4kE8EKDqFpULkiaSQTYcTYSnN5P10NKouSO4RESKAH1gpj8
	KcSzfG5mGbs5WXQquEoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPtpZ-00000006WKs-2sVO;
	Thu, 21 May 2026 03:12:17 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPtpW-00000006WKF-3Jwv
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 03:12:16 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-43d77f6092eso3203004f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 20:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779333133; x=1779937933; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8wKZIV3M9dAvChZqriseN2eTo/lDeIhoPS+0TO8df0s=;
        b=DDPun2iLAlwrH69C4u3CbxSecCKjEzu7K6LxpFvEI6/+X/Iscxu+IXsb8EUuUFe/SC
         If06hvYo5HQlWA9jbog8TduMwD2VYNvqlftfQmyU/RYateFdQjjOEDVpSQ/jbPyJtk1i
         zs8JdIuccQIhmYTAlF8W3LCrcn4x6FWQcIVbZILcM4zG/FL3XeZ1Sv71zvO3EXFlLd7q
         s5SqDEP958jT1N4+axWIEJHT6pneivGBnEJs72LdWp7V7Vaz5GYoFfBEi6zASnJEHHCz
         7BUb9Lij+1oE1mBM/1so7p2MlCxx2GPAOUIJsE3+Zp+2b++jMz77eBdAwh4g34I5GDu/
         efnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779333133; x=1779937933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8wKZIV3M9dAvChZqriseN2eTo/lDeIhoPS+0TO8df0s=;
        b=p9l/3Xv8ZJzdSHw5PsjOZ1B3g5Kl3ND2fo389UNVVgdXXBih5g7oGxfXlparwnGIlw
         BOTrkauNkrnhyJlfOBmMxEVqcK0yZ6OI5lgXOi31LxkThjiAcNCL0fZsSOnLvpfTWrsg
         e+XKcyZU7g5AjJV5Jk1VBM8AlNz01Dk3ni9ZmDOa1LM6DoxaewiDrcaxPI4DUrWme+IV
         Rh1LkejvErxivgK2BDLCXo2Zefde7DQ8Dl1c1diuBXlrz3vQkDUzYQUBI/8TRwzuC/Zl
         N+tm0oR1aJ1PuyFaShlTQwfzRzQZjZ3s83QmC0v5IQqrF1R9wv2cP/Sph1jlBTmDsOdu
         dN8A==
X-Forwarded-Encrypted: i=1; AFNElJ/Y2WxoJrtsD7iyMlx/OxsjmCY3PGRuUmSDwv0olgMRz6DNS9GZvsWx3I3vVQPp3fWI0HTHYIB9xFU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx2VQtNtoEClD2QWyhypz5OyvNosq6JpYTjBXz0XWr7ku9oUGn
	CcBs0uSyFDeHDoCyk3xeC3L/u+30E/fXYGGFLtQ4ztGyYoaYMi0SiB7c
X-Gm-Gg: Acq92OEm5BLq1MaS9p8KDKMzXCeklAIvbHQSYoGju3uGGrMFOuCxogeiI2ZrhQlt0cQ
	R0X3sA5K22xYTlunRgl6x3l6IrPuy9Qfka6jSFg9DbqCL79zB+hxYJ9+jw3B2ruSvqQ6UvAa6xS
	YjEZR2bauIgdPD3+AHpw1sYV5WO68CJkujtD56ppm/ABjUUcVAEcGcwqqzNcFSj0d7TCPUNqAnG
	WM1/by5I7Lf/SrTe3A7TWqSi/AHIAEnerdRk0ndHiRV7nmPyNLDu0qbdJb4VXHrqUqwA+iE/WZD
	S1NiMZO8aCn4OWHPjFIxZl+5IxiUWSYaMGUeihO+JiIrFFlsiKNPEH/G9DrUGCc+JNafTLfwOl9
	TKCQEu6iIJa8nSAXBvwMFJI3sjUpRbOJwwcCHwrqZrJkuV32KggYbqqw783ee89sS9v41PWGn+N
	DI4KPwm1u60zMIEIvqL0GdidakGYlws3DtMW7mMm7Sj91JW7z/yGePiyoV8yw5SplMJ1JZLOCrk
	tS34pdLR8+hQdw+UCLGqhg2viCj
X-Received: by 2002:a05:6000:460e:b0:44b:cb31:b767 with SMTP id ffacd0b85a97d-45ea413b90amr1144097f8f.36.1779333132789;
        Wed, 20 May 2026 20:12:12 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da15a6449sm58636100f8f.37.2026.05.20.20.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 20:12:12 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: jan@3e8.eu
Cc: netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	andrew@lunn.ch,
	kuba@kernel.org
Subject: Re: [PATCH net-next v5] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
Date: Thu, 21 May 2026 05:12:10 +0200
Message-ID: <20260521031210.24834-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260519162007.12345-1-petr.wozniak@gmail.com>
References: 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_201214_851512_EB33E922 
X-CRM114-Status: GOOD (  19.11  )
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

On 2026-05-20 at 23:19, Jan wrote:
> The patch seems to be malformed. I had to do some manual changes to get
> it applied.

Thanks for testing and for taking the time to apply it manually. v6 has
been sent just now with the formatting fixed.

> Using this patch, the module works right away, without waiting several
> minutes for the PHY probing retry loop to finish.

Great to hear it works on your ATS SFP-10G-T module as well.

> I also have a 2.5G module (XikeStor SKT-2.5G-100M). It supports
> Rollball, but does not respond to commands immediately. With this patch,
> it only works with a small delay in "module_t_wait".

v6 replaces the fixed 70 ms sleep with a 10 x 20 ms polling loop
(200 ms total), matching the tolerance used by the existing
i2c_rollball_mii_poll(). This should give slow RollBall bridges a
better chance to assert CMD_DONE in time.

The XikeStor module is not yet in the quirk table so it won't be
affected by this patch. When support for it is added later, an
appropriate module_t_wait can be set in the quirk entry if needed.

> I am a bit confused by this change. This is the same model name which
> is used by my non-Rollball ATS module when it is linked at 1G on the
> copper side. Are there other modules actually supporting Rollball which
> also use the model name including "-I"?

The "OEM"/"SFP-10G-T-I" quirk uses sfp_fixup_rollball (not
sfp_fixup_rollball_cc), which routes the module through the new probe
path rather than forcing MDIO_I2C_ROLLBALL unconditionally. If the
module has no RollBall bridge -- as is the case for your ATS module --
i2c_mii_probe_rollball() returns -ENODEV and sfp_sm_add_mdio_bus()
transitions mdio_protocol back to MDIO_I2C_NONE, so PHY probing is
skipped entirely. Non-bridge modules are handled correctly regardless
of whether they respond at 1G or 10G.

Thanks again for the detailed feedback.

Petr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
