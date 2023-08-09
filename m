Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19789C04A94
	for <linux-phy@archiver.kernel.org>; Wed,  9 Aug 2023 07:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=YoLDmgRm4Thbnq491Xw6tycEse1I0DL9212yT+TI41w=; b=hs04P2xPyAyF0z
	I8McqCFT7m8QcMaKxVv9Uz++Lm06/yS8mOw4kpMQsiaS90eloa5huwYA4zi4nFjqVm0R7UHl42OjU
	beDLPd3IQHUblAjLUE1OxKbjKQgpexm8clbroP+sgoBmixC27FYoWnblcrFlVf1fAWzZfUKetXXFH
	PIAohPAI4PUFZYTSElTsgdDVp8TaGURcYixBG0yi/9rQAk5970ot4gVGi05BQD1vabcWlc8E449we
	/mi+kd2bXxePLOfbUMGe1XHKAipiRaAKC3QILjw4jD0zXfcv2NXvTeVyXsod0NPWE6QB77y4akm7Y
	OorYaLVEKHaCuFD9T9+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTe5b-004JV5-2K;
	Wed, 09 Aug 2023 07:58:43 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTe5X-004JUP-2s
	for linux-phy@lists.infradead.org;
	Wed, 09 Aug 2023 07:58:41 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fe501e0b4cso31240895e9.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Aug 2023 00:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691567917; x=1692172717;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZMK/MF4QoWmTRy/7r0rvm+M3cYZZiIVGcbwV1xMbPtA=;
        b=Vc8dhEQ337HqN7x0eJ4phDB03/f2AB2NN5lkvQCHkvLd/y/o1qMKmve35y1fmkXnXj
         6XCOWfZ7W+iBw3WdwemShbMpzo8oJieUXB+gC2lWNvEDwQUdMjEYlSBIO8ElbkEi4yYS
         /3QMcjzkMS0z0v6FiVnVRVgyGp1bABtgpk0w6YHK9sqMNZ8oeFq21hnd4y2ALjEeeuvG
         fGsN9vHSFOPPE8hjRAiAd2wFRiSXxvlpEYC/vBqhsE3CWM4ImAqIFD8oLK8x2UTFcxc6
         FfMMSxwVsNLY7rnIlSbXJiZqiKXEFl1RnlBwnXKKgeMtPVYpqanYqRJLTcNzWV+i+PUd
         efrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691567917; x=1692172717;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZMK/MF4QoWmTRy/7r0rvm+M3cYZZiIVGcbwV1xMbPtA=;
        b=JibBzJNDZJmwpPbBITVBzj8fyXBfVRXWWsK9SMSGGhb7MfNBl7fJL1dH+T6cxEzNWO
         K/vOwu4IugHwbPXHXWap6/6zMW96v3ZYP2H2peXOcCyg9+RRWCU7jyUJvoWMiuej4h8J
         FRC+0KV8ZFl9egx5YuIMWxL18N9QDDL6zwX/WEOAHthe17tc0rBiEW1C7+QfQKn+v4+q
         6sZohURyUu8PrkqwGtqx+WTCiDHJT0SvjBE3HOKT8vjp9+XjfcD8BhqT7xEDwYQa1Bn2
         5AXRbkFRs1R3/w3mqxfPzpPh+nsuIxzHa2TtYoTIwrqxmSoTQ0rdIxYaVwsOnEHbCnnz
         dwDg==
X-Gm-Message-State: AOJu0Yz4qpabmLwykqZg6miVOEPgRo1MAVc3RUoEQJPXEX6nCWFXpQV8
	00q12mL+8Tsxml1T/kktVw6ouw==
X-Google-Smtp-Source: AGHT+IH6Gfg0Ox1ijcaH3Yo/doK/gmTY3rCMIO8FuqulZi8laqcGMrnU8wQH8fU1K7v2TXfqSmiz6Q==
X-Received: by 2002:a05:600c:205a:b0:3fb:d1db:5454 with SMTP id p26-20020a05600c205a00b003fbd1db5454mr1563638wmg.35.1691567917371;
        Wed, 09 Aug 2023 00:58:37 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id q12-20020a7bce8c000000b003fe26244858sm1136784wmj.46.2023.08.09.00.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 00:58:36 -0700 (PDT)
Date: Wed, 9 Aug 2023 10:58:34 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org, freedreno@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/3] drm/display: add transparent bridge helper
Message-ID: <79f07f7d-1de0-4a48-961e-30b6789e3b6b@kadam.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_005839_949648_04F83D96 
X-CRM114-Status: UNSURE (   9.06  )
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

Hi Dmitry,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dmitry-Baryshkov/drm-display-add-transparent-bridge-helper/20230802-091932
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230802011845.4176631-2-dmitry.baryshkov%40linaro.org
patch subject: [PATCH v3 1/3] drm/display: add transparent bridge helper
config: x86_64-randconfig-m001-20230808 (https://download.01.org/0day-ci/archive/20230809/202308090559.RMlH2Dl6-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230809/202308090559.RMlH2Dl6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202308090559.RMlH2Dl6-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/display/drm_simple_bridge.c:41 drm_simple_bridge_register() warn: possible memory leak of 'adev'

vim +/adev +41 drivers/gpu/drm/display/drm_simple_bridge.c

abf701043719cd Dmitry Baryshkov 2023-08-02  30  int drm_simple_bridge_register(struct device *parent)
abf701043719cd Dmitry Baryshkov 2023-08-02  31  {
abf701043719cd Dmitry Baryshkov 2023-08-02  32  	struct auxiliary_device *adev;
abf701043719cd Dmitry Baryshkov 2023-08-02  33  	int ret;
abf701043719cd Dmitry Baryshkov 2023-08-02  34  
abf701043719cd Dmitry Baryshkov 2023-08-02  35  	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
abf701043719cd Dmitry Baryshkov 2023-08-02  36  	if (!adev)
abf701043719cd Dmitry Baryshkov 2023-08-02  37  		return -ENOMEM;
abf701043719cd Dmitry Baryshkov 2023-08-02  38  
abf701043719cd Dmitry Baryshkov 2023-08-02  39  	ret = ida_alloc(&simple_bridge_ida, GFP_KERNEL);
abf701043719cd Dmitry Baryshkov 2023-08-02  40  	if (ret < 0)
abf701043719cd Dmitry Baryshkov 2023-08-02 @41  		return ret;

kfree(adev);

abf701043719cd Dmitry Baryshkov 2023-08-02  42  
abf701043719cd Dmitry Baryshkov 2023-08-02  43  	adev->id = ret;
abf701043719cd Dmitry Baryshkov 2023-08-02  44  	adev->name = "simple_bridge";
abf701043719cd Dmitry Baryshkov 2023-08-02  45  	adev->dev.parent = parent;
abf701043719cd Dmitry Baryshkov 2023-08-02  46  	adev->dev.of_node = parent->of_node;
abf701043719cd Dmitry Baryshkov 2023-08-02  47  	adev->dev.release = drm_simple_bridge_release;
abf701043719cd Dmitry Baryshkov 2023-08-02  48  
abf701043719cd Dmitry Baryshkov 2023-08-02  49  	ret = auxiliary_device_init(adev);
abf701043719cd Dmitry Baryshkov 2023-08-02  50  	if (ret) {
abf701043719cd Dmitry Baryshkov 2023-08-02  51  		kfree(adev);

This needs to ida_free(&simple_bridge_ida, adev->id) as well.  There is
a smatch check for this (check_unwind.c) but I guess I plan to re-write
it a bit before I turn that on.

abf701043719cd Dmitry Baryshkov 2023-08-02  52  		return ret;
abf701043719cd Dmitry Baryshkov 2023-08-02  53  	}
abf701043719cd Dmitry Baryshkov 2023-08-02  54  
abf701043719cd Dmitry Baryshkov 2023-08-02  55  	ret = auxiliary_device_add(adev);
abf701043719cd Dmitry Baryshkov 2023-08-02  56  	if (ret) {
abf701043719cd Dmitry Baryshkov 2023-08-02  57  		auxiliary_device_uninit(adev);
abf701043719cd Dmitry Baryshkov 2023-08-02  58  		return ret;
abf701043719cd Dmitry Baryshkov 2023-08-02  59  	}
abf701043719cd Dmitry Baryshkov 2023-08-02  60  
abf701043719cd Dmitry Baryshkov 2023-08-02  61  	return devm_add_action_or_reset(parent, drm_simple_bridge_unregister_adev, adev);
abf701043719cd Dmitry Baryshkov 2023-08-02  62  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
