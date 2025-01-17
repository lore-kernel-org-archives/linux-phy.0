Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22C69C02183
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jan 2025 08:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3GlttoVdqHoi48oqt7CXUamdRShGxI5HHVUbmkUekQw=; b=Cir2A0db8/98l0
	uxFJHCpEYe6koL33ieazileyW9ZmnaGI0smevbn4/h++KbenpIK4vi9dRU8Q9CHQYKaoW8ATtuP7w
	s0gRTv7xQw3hZgJMMfN/ViV+WghrLQ+au8yqI5VB5Pef2RLdZvcNZBM7iTgIrn/KVNN/NwtpCITyK
	agF2C3yS46i9KoMdg+Ws8wJ4qWHSA3LDmLmUcG9iwkK0EOfTiEGZ3Kc78kQr++0K5UGQ4NFsg8VqK
	Jarax1M/6HgWBl5wI0R+KbxTDEssWC0v+PBbZxIT3g0MzOryXhK3qJgB9ISFw8TqtRftvy6fq9ZQ5
	QuzCf3GZLkDM6BlyYhNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYhry-0000000HLur-2VlC;
	Fri, 17 Jan 2025 08:38:22 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYhrv-0000000HLu8-3U6r
	for linux-phy@lists.infradead.org;
	Fri, 17 Jan 2025 08:38:21 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-436ce2ab251so11732085e9.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Jan 2025 00:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737103098; x=1737707898; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eJ1ei5cf4bIYP2dhBSNsW7gRWvtxXhyGMsyM2uckNOk=;
        b=NCimhMNgdajhefldRoYvkft0pyqIsUYsFa+k8qdz3ity+5f/GReSV3BTQslOFuESj0
         Nlw9NzdJpIYyACMzZea2s7TdGRFYRXV+mQ9b5y/6BMUUOAJL151kNa3bgMetH9oFxz/c
         b98M55sMasAa/supbRnT+PotzMf1mKYn1/3txadefwL+x7PYGUB0peTvJltMJCLC95sy
         yYWnsAaIozGuTUNsktHws6/nrwDI4LIdrNp9kDdEDkOwMQwOLcl+AC62FVSnHwquMxOW
         cegN0KbKbt4soPd5xFtnxBLX40Sv17+aOXYaEDUJnflgt83AXW3efXtpaOIgCD1kdups
         DKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737103098; x=1737707898;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eJ1ei5cf4bIYP2dhBSNsW7gRWvtxXhyGMsyM2uckNOk=;
        b=ZO3gf4CCelqccOQysZEP3VpPEVHyBpRODIRzMX/vEVSLLYo8yyzgxXFf3nB6Kx3yDB
         254T2J0vFmUD7A400Sve4ja9PLfNYXF+hbYYbdGungAC4M282aw4ttQigSunB+fyhaKT
         VslNU2uyzeHmEyznLkEiILfzzmSxtqIhLBj5OnNy6uPrsr1mXkNlvyG3lQ1zRg49vY46
         BFDNsKc/T6NhhL08yrtohwzTGvr4CDcoGfdF60pomuPot9LfR+2JCs5Y+0NU5dLAk0+w
         7SOErLr3PX3Pn2rLt1WvnKy4Ku5LZMKmI5dgFllSeZRfZLIso5ORYyaFfHEzI/b5XFyR
         8CxA==
X-Forwarded-Encrypted: i=1; AJvYcCVy/dM3Py+83aIETHUz/g6dQLTN8Ugc2zmSw6BZ0i1dT5j4KnA9sWvA0ahohrTRqz54TDQnM+6vIP4=@lists.infradead.org
X-Gm-Message-State: AOJu0YygH5vN4lkcT8wBz/xZ3I8uLGOz9jaSDT6NEN97ghnxWhKbCVmS
	iU6jqsyMSA8zTQkBF9dWi73l6HkV1WNSNs0BjksNhxR/d/yO9QoGovxSVnsQh3c=
X-Gm-Gg: ASbGncuoXni+N7NgW5QWaXfCkIokGkqS4PkJkwaSV5g5Ux7S6CgN0EOQQZqzXa5qY0G
	m7QwFgb9b2q1FQYPEEZSYcTX+n2G3pN7O++2hDXBjD+eMqJPvkLKGkJ3oH9g9yEeRvF/gzqZgNA
	Xpxxhei93wch5tD50SJFrpky+av2hmWt7TjSGFkCiMyRKE9UKXBsnJ0A1PWLPttBzG+37cv7hbo
	gLJoKRDFzdTiqRLpFGS//0qcOeSDAyH+ri9VBFK63MMzPmV5fe5bKaENHEhRQ==
X-Google-Smtp-Source: AGHT+IHHCRSsCNB3Pr//Zs9JSCQC5BMsN2QD0gja4Pnf4e3R/D/iBTCkc6sIgLA7rH4i2gWt+Va7zw==
X-Received: by 2002:a05:600c:138a:b0:434:9d62:aa23 with SMTP id 5b1f17b1804b1-4389142e88dmr14685205e9.20.1737103098043;
        Fri, 17 Jan 2025 00:38:18 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c0f03984sm81066365e9.0.2025.01.17.00.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 00:38:17 -0800 (PST)
Date: Fri, 17 Jan 2025 11:38:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Christian Bruel <christian.bruel@foss.st.com>, vkoul@kernel.org,
	kishon@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	fabrice.gasnier@foss.st.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Christian Bruel <christian.bruel@foss.st.com>
Subject: Re: [PATCH v2] phy: stm32: Optimize tuning values from DT.
Message-ID: <d40db5ae-5db8-4541-8d20-e7bacef4ecf2@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113092001.1344151-1-christian.bruel@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_003819_881251_04783DAA 
X-CRM114-Status: UNSURE (   8.15  )
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

Hi Christian,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-Bruel/phy-stm32-Optimize-tuning-values-from-DT/20250113-172435
base:   v6.13-rc7
patch link:    https://lore.kernel.org/r/20250113092001.1344151-1-christian.bruel%40foss.st.com
patch subject: [PATCH v2] phy: stm32: Optimize tuning values from DT.
config: arm-randconfig-r071-20250117 (https://download.01.org/0day-ci/archive/20250117/202501171619.0XDYDyBZ-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202501171619.0XDYDyBZ-lkp@intel.com/

New smatch warnings:
drivers/phy/st/phy-stm32-combophy.c:147 stm32_impedance_tune() error: buffer overflow 'imp_lookup' 8 <= 8 (assuming for loop doesn't break)
drivers/phy/st/phy-stm32-combophy.c:564 stm32_combophy_probe() warn: passing zero to 'dev_err_probe'

vim +147 drivers/phy/st/phy-stm32-combophy.c

31219ca5436f01 Christian Bruel 2025-01-13  119  static void stm32_impedance_tune(struct stm32_combophy *combophy)
47e1bb6b4ba098 Christian Bruel 2024-09-30  120  {
47e1bb6b4ba098 Christian Bruel 2024-09-30  121  	u8 imp_of, vswing_of;
2de679ecd724b8 Arnd Bergmann   2024-11-11  122  	u32 regval;
47e1bb6b4ba098 Christian Bruel 2024-09-30  123  
31219ca5436f01 Christian Bruel 2025-01-13  124  	if (combophy->microohm) {
2de679ecd724b8 Arnd Bergmann   2024-11-11  125  		regval = 0;
2de679ecd724b8 Arnd Bergmann   2024-11-11  126  		for (imp_of = 0; imp_of < ARRAY_SIZE(imp_lookup); imp_of++) {
31219ca5436f01 Christian Bruel 2025-01-13  127  			if (imp_lookup[imp_of].microohm <= combophy->microohm) {
2de679ecd724b8 Arnd Bergmann   2024-11-11  128  				regval = FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_OHM, imp_of);
47e1bb6b4ba098 Christian Bruel 2024-09-30  129  				break;
2de679ecd724b8 Arnd Bergmann   2024-11-11  130  			}
2de679ecd724b8 Arnd Bergmann   2024-11-11  131  		}

If we don't hit the break sttaement above

47e1bb6b4ba098 Christian Bruel 2024-09-30  132  
47e1bb6b4ba098 Christian Bruel 2024-09-30  133  		dev_dbg(combophy->dev, "Set %u micro-ohms output impedance\n",
47e1bb6b4ba098 Christian Bruel 2024-09-30  134  			imp_lookup[imp_of].microohm);
                                                                                   ^^^^^^
Then this is an out of bounds access.

47e1bb6b4ba098 Christian Bruel 2024-09-30  135  
47e1bb6b4ba098 Christian Bruel 2024-09-30  136  		regmap_update_bits(combophy->regmap, SYSCFG_PCIEPRGCR,
47e1bb6b4ba098 Christian Bruel 2024-09-30  137  				   STM32MP25_PCIEPRG_IMPCTRL_OHM,
2de679ecd724b8 Arnd Bergmann   2024-11-11  138  				   regval);
47e1bb6b4ba098 Christian Bruel 2024-09-30  139  	} else {
31219ca5436f01 Christian Bruel 2025-01-13  140  		/* default is 50 ohm */
31219ca5436f01 Christian Bruel 2025-01-13  141  		imp_of = 3;
47e1bb6b4ba098 Christian Bruel 2024-09-30  142  	}
47e1bb6b4ba098 Christian Bruel 2024-09-30  143  
31219ca5436f01 Christian Bruel 2025-01-13  144  	if (combophy->microvolt) {
2de679ecd724b8 Arnd Bergmann   2024-11-11  145  		regval = 0;
2de679ecd724b8 Arnd Bergmann   2024-11-11  146  		for (vswing_of = 0; vswing_of < ARRAY_SIZE(imp_lookup[imp_of].vswing); vswing_of++) {
31219ca5436f01 Christian Bruel 2025-01-13 @147  			if (imp_lookup[imp_of].vswing[vswing_of] >= combophy->microvolt) {
2de679ecd724b8 Arnd Bergmann   2024-11-11  148  				regval = FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_VSWING, vswing_of);
47e1bb6b4ba098 Christian Bruel 2024-09-30  149  				break;
2de679ecd724b8 Arnd Bergmann   2024-11-11  150  			}
2de679ecd724b8 Arnd Bergmann   2024-11-11  151  		}
47e1bb6b4ba098 Christian Bruel 2024-09-30  152  
47e1bb6b4ba098 Christian Bruel 2024-09-30  153  		dev_dbg(combophy->dev, "Set %u microvolt swing\n",
47e1bb6b4ba098 Christian Bruel 2024-09-30  154  			 imp_lookup[imp_of].vswing[vswing_of]);
47e1bb6b4ba098 Christian Bruel 2024-09-30  155  
47e1bb6b4ba098 Christian Bruel 2024-09-30  156  		regmap_update_bits(combophy->regmap, SYSCFG_PCIEPRGCR,
47e1bb6b4ba098 Christian Bruel 2024-09-30  157  				   STM32MP25_PCIEPRG_IMPCTRL_VSWING,
2de679ecd724b8 Arnd Bergmann   2024-11-11  158  				   regval);
47e1bb6b4ba098 Christian Bruel 2024-09-30  159  	}
47e1bb6b4ba098 Christian Bruel 2024-09-30  160  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
