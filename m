Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E944DC001DC
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 07:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EJGOjYye5yVznIpkPyTua+ofo1Yri4Hq+/4ngtqLSik=; b=N/8PZcxTpM5ee2
	8iGV1yw0WplsehjUEpWwOZo8iUS/t/JX2ZIzwmRGQEG2EGd5/G74Rk5RNmUhYCa5a+vwvpMk0d/8k
	ZlwSRHAi84w8sG/9dQTmFBrt/YU5HYmXMt5s6X0ja94GimWssvX4mVbQEYUzNA64wpnxQFd5xfhu+
	zsRGPeD71TnWPjdYTtNBOFoWSv5i+Y3UZ3OFqY9PNpT8gNstINNj8EB4fHhIgJOizGI1JQ+Xy7+Tz
	iyKpxSDJP8Hy8AWZukkeUc+rcSkOD+2EDCFyfoljwHHiWwL1inXYQeg7Sit3oscWyLc1G1r//F+6R
	CQEzw94GgHN3ihAaQXGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNFy-00EJ7e-25;
	Mon, 31 Jul 2023 07:23:54 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNFv-00EJ6V-3C
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 07:23:53 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so38513245e9.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 00:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690788229; x=1691393029;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=325AZRv6eYo267W5HIiTf7rBPJMK+iI8T739L0ciJ94=;
        b=cjFDLLZoIX+Gequ7lIyeKgRIE5Nk47W1/EvTLusDeiZiPVwUSY5RPZtNzZA6yHPlgC
         DbLpvZzpC14XuhOwoQCHJ0tHwHdDZOkM4T57C/zX4Jjs9IWQfv6mnRocwHnI9o1FT4Pm
         nIeBWMtrEd6CEMVa5jRK142lzCIWRQCG3BnCCbseG5zKx7wnSHAxwxc5APP/zDykSJFv
         6Dcml8Z3KjqhYCLL9+KI6iWf2LSQgSjHUgBXzGa+PqO2f3mi+6ZkvFD6uk5jeV8ky6q8
         +q9/nEFeSzfnzxoE+9t3i/nzQLnSaaCBte5zaSbiuwfRDI+EXjMrnD461+C9rsDLCSaj
         Lofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690788229; x=1691393029;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=325AZRv6eYo267W5HIiTf7rBPJMK+iI8T739L0ciJ94=;
        b=iWbUPtOqu1StNELCsnSg2y4PpPWao06NdOzku1tpvCnnrKqda87AIPhkB03sXKTFDM
         27FheB3p6DpT2vxTyM4uKphmS1uJDSqkur6vzEKUqElRlRRSv9LNV36UIbmkwMNCmsdT
         Ry5EP08MnQFcH8cGsmYQs/FhbY10BhAI/g/L80e0j4/DHJmmanFTJmwYYoqZ14zGoKBB
         OBERIfKY96xaiDvbfFajRosPBd9/lnHVhjI+Xygug8DvoOFNIlJfbk2SHJv4n37Rk++U
         vdx2plYLM+QkoRj7qroOcuTew1IckFTm5uR2m6BErD5GW/978QOWNE+RSkwskhW+xiTh
         oSYw==
X-Gm-Message-State: ABy/qLZ2yVl3v9rolJGAdzclPBpUo/q3Pa7DzD8A7iyMaiTw1tJqfYoI
	/rpwaxukeyOE6mQLeNgKCCAhKw==
X-Google-Smtp-Source: APBJJlHLVunYzCLGD2CSuHD4UiN9IXp3QUhm5bD/skILBTCasWJqje49ji3zwzO68omCzd4+6RHHhA==
X-Received: by 2002:a1c:7214:0:b0:3fc:3f31:422f with SMTP id n20-20020a1c7214000000b003fc3f31422fmr6044322wmc.3.1690788228946;
        Mon, 31 Jul 2023 00:23:48 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c308900b003fe15c466f3sm5674911wmn.0.2023.07.31.00.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 00:23:48 -0700 (PDT)
Date: Fri, 28 Jul 2023 14:04:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: stanley_chang@realtek.com
Cc: linux-phy@lists.infradead.org
Subject: [bug report] phy: realtek: usb: Add driver for the Realtek SoC USB
 2.0 PHY
Message-ID: <707bcae8-3178-4247-a272-50e8b8d3e5a2@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_002352_028255_B1A9207B 
X-CRM114-Status: UNSURE (   8.31  )
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

Hello Stanley Chang,

The patch 134e6d25f6bd: "phy: realtek: usb: Add driver for the
Realtek SoC USB 2.0 PHY" from Jul 25, 2023 (linux-next), leads to the
following Smatch static checker warning:

drivers/phy/realtek/phy-rtk-usb2.c:901 get_phy_data_by_efuse()
error: 'buf' dereferencing possible ERR_PTR()

drivers/phy/realtek/phy-rtk-usb3.c:460
get_phy_data_by_efuse() error: 'buf' dereferencing possible ERR_PTR()

drivers/phy/realtek/phy-rtk-usb2.c
    878 static int get_phy_data_by_efuse(struct rtk_phy *rtk_phy,
    879                                  struct phy_parameter *phy_parameter, int index)
    880 {
    881         struct phy_cfg *phy_cfg = rtk_phy->phy_cfg;
    882         u8 value = 0;
    883         struct nvmem_cell *cell;
    884         struct soc_device_attribute rtk_soc_groot[] = {
    885                     { .family = "Realtek Groot",},
    886                     { /* empty */ } };
    887 
    888         if (!phy_cfg->check_efuse)
    889                 goto out;
    890 
    891         /* Read efuse for usb dc cal */
    892         cell = nvmem_cell_get(rtk_phy->dev, "usb-dc-cal");
    893         if (IS_ERR(cell)) {
    894                 dev_dbg(rtk_phy->dev, "%s no usb-dc-cal: %ld\n",
    895                         __func__, PTR_ERR(cell));
    896         } else {
    897                 unsigned char *buf;
    898                 size_t buf_size;
    899 
    900                 buf = nvmem_cell_read(cell, &buf_size);

nvmem_cell_read() can fail.

Sometimes, it's okay ot ignore errors, like if your reads from PCI start
failing, then there is nothing we can do as a kernel.  The user needs to
buy new hardware.  We need the serenity to ignore the things we cannot
fix.

But here the allocation can fail.  So that needs to be checked and
handled correctly.

--> 901                 value = buf[0] & phy_cfg->dc_driving_mask;
                                ^^^^^^
warning

    902 
    903                 kfree(buf);
    904                 nvmem_cell_put(cell);
    905         }
    906 

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
