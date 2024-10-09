Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B23CEDD89
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 12:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=MoA1woxjsdTrz82XKGSNCLmEH5w1saBBzQQK/03w6kw=; b=YcPw5xs1B4j9au
	F32gYlxImKKT9hO69xRyd3SNlqke1KSHh7S+KpYTfvmO+3GIrqpo0Y0509U1A/4XPZSXLo3sHAKRW
	M1pXizP1WP3mr/VdQQHbEAhERgQE+QMhvKqbUacq3pNmlPYSAnaBydlOhZN1Vw3eY58Sb09dKFdsr
	dt+ZqiCjzRbgQlUzcuarBQPMZbNraynOO7tWblIbSs3IZsMmYVkREaZxdLQxkQvGpeJ3NU85AdO8b
	tVQ8ZRWSlhmMXLZqzqT6hBaO17i0+A/SjnThOVZPVPfzVSgnW7dB10KVnnIlDgD2N3O2eJ7vlopPe
	m3cA8LDmQrFE+qvMz51w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syVlb-00000009CnW-1pOE;
	Wed, 09 Oct 2024 12:26:11 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syVlO-00000009Clg-1NUp
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 12:26:00 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-37ccfbbd467so4646721f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Oct 2024 05:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728476756; x=1729081556; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+Kn3RexbTHWZORR721iQDI9yrjKbhGn3OwSkq7dbe4o=;
        b=yXJUkjHpTE01+aXBWbdLmNxh0ZFvPTfytg5z0y46u3VoWkGuPtEyqnURNJM/z60+L8
         D41FBiQt2NIWacjQQSVxfhRl+Nktps1Q1bH6EL9OImBBe6pcRZVbSNn+LoRMD3y/68Og
         sXxfTTrOclwa8NHl+aFF2eijvDg2kEG6k7hRO9yXWqrVBUwIDJL54KfvZ44kt4qNBmtW
         ylBll4xD1JoCZRK9ru6sH3KhHDR2lCFRXu0qxsVDWzQP/VvQy+bTJ9NWzxCgpQk/DOhV
         miZWdZLUD3ll6f6djmTK42aD0k0kdP1HmTJOYjIdQ8QokvpStKV/dK9UIC5mSYgIop8L
         i3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728476756; x=1729081556;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Kn3RexbTHWZORR721iQDI9yrjKbhGn3OwSkq7dbe4o=;
        b=HICp709QmSpeZroq1hoVhXbbKM9i3dRelHAvOjcSpXOZcNW/DoFuqlbMO1iewo1eX4
         Pp6qEkcnTeAuOsMUNmKoZkxbqcp7FATzR1Dwh4W5eYa2TWfrl5IX6X4Kz2O83OKTM6D7
         f2i4zXqxxO8s/IMme7BdUZIu4RxaCbgzAqtKArXRC4mVyR3Pbfz9qq9FAskUxBfvfS83
         yoheTm6ytkahQjIA4sl6O/MVy87yG05kHw9xmwQd3iXrLNoUFdh0ZbcndxXKUl1gTt7M
         MZ958UC1M4udeDk873LY17jum1uzZDjzI4oMjiWb791KAv5BF+KyI4NvR43pZIN8+HW4
         gWuw==
X-Forwarded-Encrypted: i=1; AJvYcCWBIGIOHVdsuS0a7iRqygM77YCZLs4SlJ400itIFJY7fO1O8Lqc6fvPdNBq4+ds5qMcAEB/B2UtQbo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrWbIAgu87XKz8y3d7NuiwR+6hX5VbpeY9mSltir6aKfngX0o7
	NHiCaIcQr6iAAOxNKmCbZaJe9jU5tu1nb8CYXgyLMPpAhPllB1RbClaem9r8Vus=
X-Google-Smtp-Source: AGHT+IHDiC6I5FOoS2rlTqjxejlNi2b5hT/fIMkG7hdUwoamSyv/7Lr0j3VYOoDcaIsuG3Dy2/fVVA==
X-Received: by 2002:adf:efc5:0:b0:366:eade:bfbb with SMTP id ffacd0b85a97d-37d3aa8edb9mr1307716f8f.46.1728476756214;
        Wed, 09 Oct 2024 05:25:56 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d1690f0b2sm10367584f8f.9.2024.10.09.05.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 05:25:55 -0700 (PDT)
Date: Wed, 9 Oct 2024 15:25:42 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Anand Moon <linux.amoon@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v2 2/3] phy: rockchip-pcie: Use devm_clk_get_enabled()
 helper
Message-ID: <a86437f6-1f62-4f44-bff1-f1203d04edda@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007035616.2701-3-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_052558_399945_E4E91B4D 
X-CRM114-Status: UNSURE (   8.27  )
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

Hi Anand,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Anand-Moon/phy-rockchip-pcie-Simplify-error-handling-with-dev_err_probe/20241007-115910
base:   8f602276d3902642fdc3429b548d73c745446601
patch link:    https://lore.kernel.org/r/20241007035616.2701-3-linux.amoon%40gmail.com
patch subject: [PATCH v2 2/3] phy: rockchip-pcie: Use devm_clk_get_enabled() helper
config: loongarch-randconfig-r071-20241009 (https://download.01.org/0day-ci/archive/20241009/202410092019.vGogfPIO-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202410092019.vGogfPIO-lkp@intel.com/

smatch warnings:
drivers/phy/rockchip/phy-rockchip-pcie.c:278 rockchip_pcie_phy_init() warn: missing error code 'err'

vim +/err +278 drivers/phy/rockchip/phy-rockchip-pcie.c

fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  269  static int rockchip_pcie_phy_init(struct phy *phy)
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  270  {
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  271  	struct phy_pcie_instance *inst = phy_get_drvdata(phy);
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  272  	struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  273  	int err = 0;
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  274  
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  275  	mutex_lock(&rk_phy->pcie_mutex);
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  276  
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  277  	if (rk_phy->init_cnt++)
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19 @278  		goto err_out;

Originally, this path just unlocked at returned zero.

90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  279  
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  280  	err = reset_control_assert(rk_phy->phy_rst);
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  281  	if (err) {
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  282  		dev_err(&phy->dev, "assert phy_rst err %d\n", err);
3114329651e74f drivers/phy/rockchip/phy-rockchip-pcie.c Anand Moon 2024-10-07  283  		goto err_out;
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  284  	}
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  285  
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  286  	mutex_unlock(&rk_phy->pcie_mutex);
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  287  	return 0;
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  288  
3114329651e74f drivers/phy/rockchip/phy-rockchip-pcie.c Anand Moon 2024-10-07  289  err_out:
90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  290  	rk_phy->init_cnt--;

Now it decrements the counter so presumably it leads to an underflow/use after
free.

90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  291  	mutex_unlock(&rk_phy->pcie_mutex);
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  292  	return err;
fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  293  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
