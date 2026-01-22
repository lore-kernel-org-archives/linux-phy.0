Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C82E4C44536
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 06:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=yKlV3ZK9A7Ul1bltuY+9YBAe/CgwJs3gwKqK1S/dz6A=; b=Msq+xEri8km48U
	z/SfyWggA3A2rxmA0+3jlWG+byB+QIYjmqoXVWXjt5KQPvk3c1Cw71yA0HxXs7wTSrSAlNtF74vCn
	z5UDCmIygRiu8ki/Pvlczen+NAsQVFxaq9acY/yEiQdhbt/0QsCNUTWjPgNGuPkRlalQXx4PjJ/2k
	3JI/wMXOuJdDreS+TMu9S+8eLK/iI4YnDu2ive+EWbNnObU/4244Uy3AjDYtiJChmxF1vFpU/lmT9
	cczzjDlH6DG7mKFShpU8bXJdhsnDR8by/qpPPjUI0S0f0H1r5K4V04fE93PKSZ5a/3y6dALosmziV
	gEAYgMB/pyLzjwEd6DaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vio0Y-00000006UdM-2btv;
	Thu, 22 Jan 2026 06:17:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vio0V-00000006Ud3-2VbB
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 06:17:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so5906945e9.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 22:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769062644; x=1769667444; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XFWxi+AFltNFDVpcrpAcnDmVTxmCRVFES1AkiIw22SY=;
        b=cweQokzB72s8O0qe2obxgmDB31srZ5lskMlvldAaJovkJngv2i9YpxgbuiXFPDh9oS
         qtLlcThLMlEeeVtXNc+COgiNlHh4osxpJGOaolWx+FYxi3y00y4h+DCbWguG1MwP/vaf
         P85MUHmPhdHKlQKdS1El8O2mAELWNk8AHCeEQX+DtbKETKPBaDy3AQNVceugUWuPH4xY
         YBh25kYUm45oU6WASJFfk6t/gnMS9Canq5v3WzcC/Mi4LmjeEJ6ZOiGnrzx0Y9zHLSOp
         8cz2+cYfho6tX1C51GltEBBzEkUK5ZymgSDb6eruAuPA5/2PfdTv7L+zSHMcZvIOxsbj
         DQLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769062644; x=1769667444;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XFWxi+AFltNFDVpcrpAcnDmVTxmCRVFES1AkiIw22SY=;
        b=fKZUp57nFoAllI2vKZQpCFkrUtjeOtaBC7bEXq0uAri9o+Wq0Q5h4tbnaZvdI0aC3X
         aTK/JAN7vtbCG/SxlUQMcNBIe8DaEBcjZp6Ql8H8pUhYPGbjWhAPJLfvJvzVMu3WZLuw
         QPGwxt/3zIyF7vxLI9HTqH1mJONxehKYIBcrJaYnoMZmXp6zeZ1bVjln9AVteJ5kZdf0
         COov1z/quX8+chVH7OdyhsJSmwgjD+1tlGYRvZoOHCSR6ltDG169yoA7EH1Hs0I67nYc
         2e6q++igrRS+rAOumfcI8bc00w4+2ROtRx0mS6Z9TwVJt+cHTk8w/XOFrG48flLzUoiw
         hV+A==
X-Forwarded-Encrypted: i=1; AJvYcCXDgBOG8S0tB8D4bVhhhpnHmqDLpfJgI+Bihzb4z2p/rlHVuJGUe4LhQwPCL1PAdljqkx+y2YBh8oc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw398d/bgtUTeAtzXv+XBIps2RlR8YeM/Io/UvCGxPWaRrdDaai
	gZdOt8scy8kxnIZdm7wlTZu/ZEAvdtoTf+wrqY0gc+PPCKh0b/uJxn/ra/DNS0kOoMY=
X-Gm-Gg: AZuq6aLjhl33etXPztzsaNvAH0hgLDiWWBwUh6gn2vJIndxrb01qrA5v/NTATbjHwDU
	qTi8jhhBxmrpolaVKfbm3N3ZJDld0Ncorl6BfrDAJ/ei0ho1FNwHRt+AcjmQpXYVilvzVSQBiIh
	blnvU8Pzo9j4zZpr7eM6q2qKR+ZNLXo7DtuYvwIKUWBApSRGDdfHfdyFgD9pN13fYxTHtcNrsgU
	2TKUVo+oYImDei4G2ITbUauFmC2HL6r7tTo9iqt3TvGfkM2dfl2uJH6hmrxQNRH01DbNgCUOa9e
	GQk4eYDf//UAKO+yt9/Qqqm8RQfQiyyWANH1y7xC0iaJhI1NC69f5z1mKtAdcu2R+yCyzbXJCEY
	CBTn9gLFSPMLIcG9JfumI2Au7k1LWDX+n8v221lO7CAapkafQcOf/2WqcFxEAS/7c5wDPIO83um
	1Dvhmtda3TzRZcYLgH
X-Received: by 2002:a05:600c:83c8:b0:477:7b16:5fb1 with SMTP id 5b1f17b1804b1-48028360726mr235733975e9.7.1769062643924;
        Wed, 21 Jan 2026 22:17:23 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804704b89bsm40122255e9.9.2026.01.21.22.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 22:17:23 -0800 (PST)
Date: Thu, 22 Jan 2026 09:17:20 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Josua Mayer <josua@solid-run.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v6 2/7] mux: Add helper functions for getting optional
 and selected mux-state
Message-ID: <202601221036.J0kR78Uw-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121-rz-sdio-mux-v6-2-38aa39527928@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_221727_672340_A4B32FF6 
X-CRM114-Status: UNSURE (   9.18  )
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

Hi Josua,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Josua-Mayer/phy-can-transceiver-rename-temporary-helper-function-to-avoid-conflict/20260121-173607
base:   8f0b4cce4481fb22653697cced8d0d04027cb1e8
patch link:    https://lore.kernel.org/r/20260121-rz-sdio-mux-v6-2-38aa39527928%40solid-run.com
patch subject: [PATCH v6 2/7] mux: Add helper functions for getting optional and selected mux-state
config: arm64-randconfig-r073-20260121 (https://download.01.org/0day-ci/archive/20260122/202601221036.J0kR78Uw-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 8.5.0
smatch version: v0.5.0-8985-g2614ff1a

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202601221036.J0kR78Uw-lkp@intel.com/

New smatch warnings:
drivers/mux/core.c:776 __devm_mux_state_get() warn: passing zero to 'PTR_ERR'
drivers/mux/core.c:796 __devm_mux_state_get() warn: passing zero to 'ERR_PTR'

Old smatch warnings:
drivers/mux/core.c:722 mux_state_get() warn: passing zero to 'ERR_CAST'

vim +/PTR_ERR +776 drivers/mux/core.c

0610cc3159b786 Josua Mayer       2026-01-21  761  static struct mux_state *__devm_mux_state_get(struct device *dev, const char *mux_name,
0610cc3159b786 Josua Mayer       2026-01-21  762  					      bool optional,
0610cc3159b786 Josua Mayer       2026-01-21  763  					      int (*init)(struct mux_state *mstate),
0610cc3159b786 Josua Mayer       2026-01-21  764  					      int (*exit)(struct mux_state *mstate))
0610cc3159b786 Josua Mayer       2026-01-21  765  {
0610cc3159b786 Josua Mayer       2026-01-21  766  	struct devm_mux_state_state *devm_state;
0610cc3159b786 Josua Mayer       2026-01-21  767  	struct mux_state *mstate;
0610cc3159b786 Josua Mayer       2026-01-21  768  	int ret;
84564481bc4520 Aswath Govindraju 2022-01-07  769  
0610cc3159b786 Josua Mayer       2026-01-21  770  	devm_state = devres_alloc(devm_mux_state_release, sizeof(*devm_state), GFP_KERNEL);
0610cc3159b786 Josua Mayer       2026-01-21  771  	if (!devm_state)
0610cc3159b786 Josua Mayer       2026-01-21  772  		return ERR_PTR(-ENOMEM);
0610cc3159b786 Josua Mayer       2026-01-21  773  
0610cc3159b786 Josua Mayer       2026-01-21  774  	mstate = mux_state_get(dev, mux_name, optional);
0610cc3159b786 Josua Mayer       2026-01-21  775  	if (IS_ERR_OR_NULL(mstate)) {

Please, change this to if (IS_ERR(mstate)) {.  The mux_state_get() never
returns NULL.  I have written a blog about functions which return both
error pointers and NULL.

https://staticthinking.wordpress.com/2022/08/01/mixing-error-pointers-and-null/

0610cc3159b786 Josua Mayer       2026-01-21 @776  		ret = PTR_ERR(mstate);
0610cc3159b786 Josua Mayer       2026-01-21  777  		goto err_mux_state_get;
0610cc3159b786 Josua Mayer       2026-01-21  778  	}
0610cc3159b786 Josua Mayer       2026-01-21  779  
0610cc3159b786 Josua Mayer       2026-01-21  780  	if (init) {
0610cc3159b786 Josua Mayer       2026-01-21  781  		ret = init(mstate);
0610cc3159b786 Josua Mayer       2026-01-21  782  		if (ret)
0610cc3159b786 Josua Mayer       2026-01-21  783  			goto err_mux_state_init;
0610cc3159b786 Josua Mayer       2026-01-21  784  	}
0610cc3159b786 Josua Mayer       2026-01-21  785  
0610cc3159b786 Josua Mayer       2026-01-21  786  	devm_state->mstate = mstate;
0610cc3159b786 Josua Mayer       2026-01-21  787  	devm_state->exit = exit;
0610cc3159b786 Josua Mayer       2026-01-21  788  	devres_add(dev, devm_state);
0610cc3159b786 Josua Mayer       2026-01-21  789  
0610cc3159b786 Josua Mayer       2026-01-21  790  	return mstate;
0610cc3159b786 Josua Mayer       2026-01-21  791  
0610cc3159b786 Josua Mayer       2026-01-21  792  err_mux_state_init:
84564481bc4520 Aswath Govindraju 2022-01-07  793  	mux_state_put(mstate);
0610cc3159b786 Josua Mayer       2026-01-21  794  err_mux_state_get:
0610cc3159b786 Josua Mayer       2026-01-21  795  	devres_free(devm_state);
0610cc3159b786 Josua Mayer       2026-01-21 @796  	return ERR_PTR(ret);
84564481bc4520 Aswath Govindraju 2022-01-07  797  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
