Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B0F5C44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 22:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPnBtbcmRVQzUHrhr4zXeTY1+VRGyTA2Qy4OPR5FiLc=; b=px5y0/VePDB3xx
	pSoSIFw5Eg7ZkGETWTw5nscEn+/c+0qlu0suxT3N0ZKF+IuH8EK+uECVAw+7IEwb6ifUMoQG1OhXk
	b0JCwkHHgeWq2uVkOop3YisjbHR8jpTCDC/3Vsg8ZRf7gO110svli2oZF9qZIFvsxVp+wM7FgBD8n
	fgwjFb/pVHnV8J9Kj/ZqPuUQf8qEKqw3sJLKL34Rsi3y/Mi+gp3WtYmD91syTcd8V9IgOAfNrPBP9
	oou1ZrXVsPxACqIoGfUYXv46/61dyQYNFp4rbLWkB/2nMec4Du3j461qbpx9sU5Sqq77413Dn7ng8
	u+tH3Ja+UnsHfJW9JoJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk7j3-0000000FzxA-0vxf;
	Wed, 15 Jul 2026 22:05:09 +0000
Received: from mail-ed2-x00.google.com ([2a00:1450:4864:33::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk7j0-0000000Fzwc-3Olu
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 22:05:08 +0000
Received: by mail-ed2-x00.google.com with SMTP id 4fb4d7f45d1cf-69af1ce9674so4327316a12.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 15:05:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784153104; cv=none;
        d=google.com; s=arc-20260327;
        b=ITrgG+mSLcNLIKLDnvjOkrdyR+s7GrHNzPHz1lYYIQxmxBzFs72wK8vGACAy0jannY
         iDKgjC8i0ngGzs0irSd8xUvY4PQeqi7+hbjF6nxdf6oOgx93BeYy+NolyH+ITCsIhUtw
         9iepPmnNDUGotte0kkX4d+jlvH6TQMzGMiTj4J0FJ/zy0OSvX38VCuMWFQcqqWkZEVRM
         sZz6AVGnjlCmfD5XFr/QhkL25ueLKvX/bTmUjzCxPGQV3ekJbGx268RwPpYNHMAAJCRs
         hUJnQfpEMIQ7G/Q7vIDrb15+LyKNH8/EKBRJ/jiIfk2IQRgwrzYjNd0jiF88n9LlC0Yf
         u4XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aQMpQFhIn857g7xLzahaS8Oo4j7adBTxb9kl7VJZy+M=;
        fh=vQmiqEzyflW+y9IMEIjYkKWCBeccSgX7RSYsuomuf8s=;
        b=jW1rtTqAd5P5HzD3qEXa5AA7WU8lsg0gsKiwszdiK8FwYF9MCJjq0ehwtCC2yARv2D
         /1X6nOTr/y/FnDsluqFtSDca97IpsuafpvbI6DKs2VzgwQpqfpsGURx3DFmVW/WRvrGQ
         e8VOIQpIyd2kZhHr6GvQVxWPhNKvolTpxufgBloTKHyC4q6UOTrB+LCOTvZjmi5lmuSr
         uTf+aGDrIHeNiX86KF8+L/y6nrs82wFU3ezQhBHfEx7IO9tx3HFoRcFtW5u8QGTf/NZX
         pRtUfh/Fa6U2T6oRhDoiWHfX36SBfw4uhbnK2VSXZW8NrxNFTFvSftLhguY5RGj32DBB
         HD7Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784153104; x=1784757904; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aQMpQFhIn857g7xLzahaS8Oo4j7adBTxb9kl7VJZy+M=;
        b=jymqof4DIFagcs9sNR0ltn1U8ytrtGkgZUkTDrACyayupw9oMl0/9ZqmxxTHwOJKKI
         WkSoiJafhqjnAKLEGVqOzuU9PWutH0eT9l7vTQ8cqMeOrjfnj0f9FtZ5P+3Cjwv1KV3c
         0053d4djbUpCtXcTn7MD0oCZy5m/TxIgQaJPcTcHBM6djyLjWCcwiwFZXGAUnhFyV/ZP
         XeWczjmh5Lnnzwybjt/KRKO3NpudqTF+mOTYPFzvuwuaD1y1qOSRi8kvnf2ZyxEiaXCM
         hRAU+l6ECeu45Im+ORkJEAIQelDBDvTo9t7ROFVCdL2s5fgPyZiBCPuzrPRJ7oTuon3z
         +MZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784153104; x=1784757904;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=aQMpQFhIn857g7xLzahaS8Oo4j7adBTxb9kl7VJZy+M=;
        b=EIqadBClDoyqHREk4snh1+jo3EXhQ9oaSe8ck1z+5ZJ1LfU1MeBslBuxJFF0i99Up3
         uTe3u9WW0I0c95LtMh3HazfyXwP5QYNadDVpvJeRDY4GQcvireEtM86OXehG94ut1+Qs
         cvKn2EFGNDfIi2YjDP3c+dW9vYAaMRqbwnUNdSoeGhufxkwKrgXxY2268DmUxvwC/XqT
         XxBXlMw8B1yBunUg80Y4zbexzCA+Cjxbhdtx3fw8Jio4oF8SjETMf/g1uyWJq9JGDYNr
         PDd/TK7JjvZ5lKdzJ0UYsuuWd8wZyHxDj7zCbhLuAu3JSIGDP8CySFa6sWNo4qcnu+0g
         t06A==
X-Forwarded-Encrypted: i=1; AHgh+Roc6cbsdJb8mZub+KO2Blsz9xVpYuulErPb6q8aEaBUQi043T39wQvcrRMzQyiuKO1B7iXdJep4134=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJMtlNdHT/Sj6phJcjW3+FpxawHkpMrUHzmwGQu0WlGz/PdT9F
	uPX72GX6Vc3DSXZGKCiejE7U4mdfawjV3ARkY/OqPPTucPRC/+AdU/gd1rrr/OLcIy+wbdVOhu4
	zLHDQzSO07nkMTmsXzx2gFpAS4U/TMtcP8SkjSRNHurDIgiI=
X-Gm-Gg: AfdE7ckfMYLzt/bMjUPA2TfAFJXOB7uIYRGCx6nmWS6XOIOUqG/RsGm9K7t4CTd7K3l
	28hLax8ly28mbG9mPhF/njyyvIW1lmPtI6JUpsYJwhnkE5enlJYrg1SnmqEnG6eshVIGCkV2p5g
	44ZyjVTh/IPm11Chh2DGNjZyAou17uAq7nySpKbfy7j5Y0d0w02uhi3hbFKpjt2HrEUIze+P5aQ
	bK/zmG+qVIux9IZWuTBhWJ7wDwv8+D1m0fMEyUXIX0htjav84/wbYZHQFHozogW
X-Received: by 2002:a17:907:940d:b0:c15:e956:f529 with SMTP id
 a640c23a62f3a-c167921c646mr308897966b.8.1784153103447; Wed, 15 Jul 2026
 15:05:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-8-coiaprant@gmail.com>
 <20260715191454.D12521F00AC4@smtp.kernel.org>
In-Reply-To: <20260715191454.D12521F00AC4@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 06:04:50 +0800
X-Gm-Features: AUfX_mzCJVaoRLkAFuMd2HDVFaZ_rNuQ-cMJT_rqC34HREB6SXQc34ycLqd-JyU
Message-ID: <CALj3r0ioKyJpcVLkeQskLqzcS_OcAbPsPxc7d7Zh9LiUprNguQ@mail.gmail.com>
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, 
	olteanv@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_150506_912558_685832C5 
X-CRM114-Status: GOOD (  35.01  )
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

> [Severity: Low]
> Does this change cause build failures when CONFIG_PCS_XPCS=m?
>
> Replacing the composite module assignment (pcs_xpcs-y) with individual
> object assignments causes Kbuild to build separate modules instead of one
> composite module, which can lead to undefined references during modpost.
>
> > +obj-$(CONFIG_PCS_XPCS_PLATFORM) += pcs-xpcs-plat.o
> > +obj-$(CONFIG_PCS_XPCS_ROCKCHIP) += pcs-xpcs-rk.o

No. This change is intentional. pcs-xpcs-rk is a platform-specific
driver and should be built as a separate module, not linked into
the composite pcs_xpcs module. There are no undefined references.

> [ ... ]
>
> > diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
> > new file mode 100644
> > index 0000000000000..ed969a38d544d
> > --- /dev/null
> > +++ b/drivers/net/pcs/pcs-xpcs-rk.c
> [ ... ]
> > +static int xpcs_rk_mdio_read_remapping(int addr, int dev, int reg)
> > +{
> > +     switch (dev) {
> > +     case MDIO_MMD_PMAPMD:
> > +             return ROCKCHIP_MMD_PMAPMD;
> > +     case MDIO_MMD_VEND2:
> > +             break;
> > +     default:
> > +             return -ENXIO;
> > +     }
> > +
> > +     switch (addr) {
> > +     case 0:
> > +             return ROCKCHIP_MMD_MII;
> > +     case 1:
> > +             return ROCKCHIP_MMD_MII1;
> [ ... ]
> > +static int xpcs_rk_mdio_write_remapping(int addr, int dev, int reg)
> > +{
> > +     switch (dev) {
> > +     case MDIO_MMD_PMAPMD:
> > +             return ROCKCHIP_MMD_PMAPMD;
> > +     case MDIO_MMD_VEND2:
> > +             break;
> > +     default:
> > +             return -ENXIO;
> > +     }
> > +
> > +     /* Writable only on MII */
> > +     switch (reg) {
> > +     case DW_VR_MII_AN_CTRL:
> > +     case DW_VR_MII_AN_INTR_STS:
> > +     case DW_VR_MII_EEE_MCTRL0:
> > +     case DW_VR_MII_EEE_MCTRL1:
> > +     case DW_VR_MII_DIG_CTRL2:
> > +             return ROCKCHIP_MMD_MII;
> > +     default:
> > +             break;
> > +     }
>
> [Severity: High]
> Can this asymmetric remapping between reads and writes cause configuration
> corruption on port 0?
>
> In xpcs_rk_mdio_write_remapping(), writes to these VEND2 registers are
> unconditionally mapped to ROCKCHIP_MMD_MII (port 0). However,
> xpcs_rk_mdio_read_remapping() lacks an equivalent redirect for reads.
>
> Because the generic XPCS driver uses read-modify-write operations on VEND2
> control registers for ports 1-3, this will result in reading from the target
> port's MMD but overwriting port 0's configuration.

No. Read remapping is performed by hardware. The VEND2 registers
reflect the settings of MII0; the corresponding bits for MII1-3 are
read-only. This is a hardware feature, not a bug.


> [ ... ]
>
> > +static int xpcs_rk_init_clk(struct dw_xpcs_rk *pxpcs)
> > +{
> > +     struct device *dev = &pxpcs->pdev->dev;
> > +     int ret;
> > +
> > +     pxpcs->csr_clk = devm_clk_get(dev, "csr");
> > +     if (IS_ERR(pxpcs->csr_clk))
> > +             return dev_err_probe(dev, PTR_ERR(pxpcs->csr_clk),
> > +                                      "Failed to get CSR clock\n");
> > +
> > +     pm_runtime_set_suspended(dev);
> > +     ret = devm_pm_runtime_enable(dev);
>
> [Severity: Medium]
> Will this leak the csr_clk if the device is removed while active?
>
> The generic devm_pm_runtime_enable() runs pm_runtime_disable() on cleanup,
> which cancels pending suspends but does not synchronously suspend an active
> device.
>
> Since this driver lacks a .remove callback to manually suspend the device,
> xpcs_rk_pm_runtime_suspend() might never be invoked on unbind, leaving the
> clock prepare and enable counts unbalanced.

You are correct. I followed the same pattern as pcs-xpcs-plat.c,
but I agree this could be a problem. I will add a .remove callback
in v2 that calls pm_runtime_force_suspend() before devres cleanup
runs, ensuring the clock enable count is balanced before clk_put().

> [Severity: Medium]
> Could this blind cast lead to type confusion?
>
> The code extracts driver data from the platform device associated with
> pcs_np without validating if the device is actually compatible with
> rockchip,rk3568-xpcs or bound to this driver.
>
> If a misconfigured device tree points to a different type of device (like
> an I2C controller), casting its drvdata to struct dw_xpcs_rk * and
> dereferencing it could crash the system.

This would only happen with a misconfigured device tree. However,
for robustness, I will add a compatible string check in v2 before
dereferencing drvdata.

> [Severity: High]
> Is there a use-after-free race condition when accessing drvdata here?
>
> This checks and dereferences pxpcs->bus before establishing a device link
> to lock the supplier.
>
> If a user concurrently unbinds the XPCS supplier driver (for example, via
> sysfs), devres will free the dw_xpcs_rk structure and clear the drvdata.
> The consumer driver might then dereference the freed pxpcs->bus before
> device_link_add() is called.

No. of_find_device_by_node() increments the reference count of the
device. The supplier cannot be unbound between of_find_device_by_node()
and put_device() because the reference count is held.

> [ ... ]
>
> > +static struct platform_driver xpcs_rk_driver = {
> > +     .probe = xpcs_rk_probe,
> > +     .driver = {
> > +             .name = "rk_xpcs-dwxpcs",
> > +             .pm = &xpcs_rk_pm_ops,
>
> [Severity: Low]
> Will this assignment cause dead code when CONFIG_PM is disabled?
>
> Assigning the dev_pm_ops structure unconditionally to the .pm field without
> the pm_ptr() wrapper results in dead code and possible compiler warnings
> when CONFIG_PM is not set, which violates the PM subsystem guidelines.

You are correct. I will use pm_ptr() to wrap the PM ops in v2.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
