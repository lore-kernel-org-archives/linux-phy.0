Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D0B4ECAAA1
	for <linux-phy@archiver.kernel.org>; Sat, 17 Sep 2022 01:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRYM7R17QlV17hJ6neIjYQkdclonSLTokkLcsDtzSGQ=; b=CPW9RBS+YBS30B
	CA4aLs3cf1SGcGMerOCZX8IQwpDrnkmqbxlMEtV0d88OiabGvC+HLgOSEFB4DTn/0qG7D47ugHg8D
	FPuD5TJO91Jih5IKjjHFhoz7jNAs8iHXd8j7gbC7vYqSDlj/LiKLBu0ZMH+NkulVMhrWaVFhFQ1gB
	QQSzoZzKWNiqQoUTimZuHOyAk/OOgnYPj81Rq7cjz2IHqExfh1wHaUx9lR8jyu9yl+SYSOd5OBUPd
	49DhI83GAy9KbUNn1TrhiRjU2XEmPwENZaYMQ5A7WZJKHHWkazzEa/u/sC16+Nda+H0HlgOuXR1Bj
	FiDVbH3nDVNnmJsHhfuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZMej-001Oay-Li; Sat, 17 Sep 2022 01:30:05 +0000
Received: from mga04.intel.com ([192.55.52.120])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZMeb-001OUD-RZ
	for linux-phy@lists.infradead.org; Sat, 17 Sep 2022 01:30:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663378197; x=1694914197;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=kG74+KSsX0ddZ8yiGjH0vTpDXWEeAKITz9bGB2Kmv30=;
  b=Vd7SXOKOFu37m1oW1MSCpePuiYJEpEiXwHQXvdrFFq2XbHgI8cC57xs+
   t72uXoknkvT84+DmSNNI41cNT12cHHCqRUP8vHZDH86vwt6efgFkqmAVf
   YbAvDs9BcCHNkO47VKY/+XyvpEeEJHp0HQwILObo5qbY2JwgYYmmC7OUI
   kW12+FKZKiWqzUudfyuqxYuvuxbI30sk6vH7t545XLhIVHRNQNPj/1lxh
   XiS1MSZo+VM6BRmNtDl31Uh2skbFj9meMIo2rFHjYmWvdGn8UW6H44sRH
   hrFtYORC1RC/tSeh2L/+rwygFbfvbqjBsbY3iSRTyke4djUSzKOrcz0BH
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="297839795"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; 
   d="scan'208";a="297839795"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2022 18:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; 
   d="scan'208";a="743528382"
Received: from lkp-server02.sh.intel.com (HELO 41300c7200ea) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 16 Sep 2022 18:29:49 -0700
Received: from kbuild by 41300c7200ea with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oZMeT-0002Ks-0a;
	Sat, 17 Sep 2022 01:29:49 +0000
Date: Sat, 17 Sep 2022 09:28:54 +0800
From: kernel test robot <lkp@intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>, mchehab@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@ti.com, vkoul@kernel.org, sakari.ailus@linux.intel.com,
	hverkuil@xs4all.nl, jacopo@jmondi.org,
	laurent.pinchart+renesas@ideasonboard.com
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
	kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <202209170957.eHfxERTT-lkp@intel.com>
References: <20220916134535.128131-5-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220916134535.128131-5-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_182959_850848_EC013B23 
X-CRM114-Status: GOOD (  18.15  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Marco,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on media-tree/master]
[also build test WARNING on robh/for-next linus/master v6.0-rc5 next-202209=
16]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Marco-Felsch/Add-sup=
port-for-Toshiba-TC358746/20220916-214808
base:   git://linuxtv.org/media_tree.git master
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/202209=
17/202209170957.eHfxERTT-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c00=
6a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/8ce1bdf646dd24a8117=
ed47f47e086ef7011c385
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Marco-Felsch/Add-support-for-Toshi=
ba-TC358746/20220916-214808
        git checkout 8ce1bdf646dd24a8117ed47f47e086ef7011c385
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 O=3Dbuild_dir ARCH=3Dx86_64 SHELL=3D/bin/bash drivers/media/i2c/ drivers/=
net/wireless/ath/ath11k/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/media/i2c/tc358746.c:986:1: warning: no previous prototype for f=
unction 'tc358746_g_register' [-Wmissing-prototypes]
   tc358746_g_register(struct v4l2_subdev *sd, struct v4l2_dbg_register *re=
g)
   ^
   drivers/media/i2c/tc358746.c:985:1: note: declare 'static' if the functi=
on is not intended to be used outside of this translation unit
   int __maybe_unused
   ^
   static =

>> drivers/media/i2c/tc358746.c:1007:1: warning: no previous prototype for =
function 'tc358746_s_register' [-Wmissing-prototypes]
   tc358746_s_register(struct v4l2_subdev *sd, const struct v4l2_dbg_regist=
er *reg)
   ^
   drivers/media/i2c/tc358746.c:1006:1: note: declare 'static' if the funct=
ion is not intended to be used outside of this translation unit
   int __maybe_unused
   ^
   static =

>> drivers/media/i2c/tc358746.c:1178:15: warning: no previous prototype for=
 function 'tc358746_recalc_rate' [-Wmissing-prototypes]
   unsigned long tc358746_recalc_rate(struct clk_hw *hw, unsigned long pare=
nt_rate)
                 ^
   drivers/media/i2c/tc358746.c:1178:1: note: declare 'static' if the funct=
ion is not intended to be used outside of this translation unit
   unsigned long tc358746_recalc_rate(struct clk_hw *hw, unsigned long pare=
nt_rate)
   ^
   static =

   3 warnings generated.


vim +/tc358746_g_register +986 drivers/media/i2c/tc358746.c

   984	=

   985	int __maybe_unused
 > 986	tc358746_g_register(struct v4l2_subdev *sd, struct v4l2_dbg_register=
 *reg)
   987	{
   988		struct tc358746 *tc358746 =3D to_tc358746(sd);
   989	=

   990		/* 32-bit registers starting from CLW_DPHYCONTTX */
   991		reg->size =3D reg->reg < CLW_DPHYCONTTX_REG ? 2 : 4;
   992	=

   993		if (pm_runtime_resume_and_get(sd->dev)) {
   994			dev_err(sd->dev, "Failed to resume the device\n");
   995			return 0;
   996		}
   997	=

   998		tc358746_read(tc358746, reg->reg, (u32 *)&reg->val);
   999	=

  1000		pm_runtime_mark_last_busy(sd->dev);
  1001		pm_runtime_put_sync_autosuspend(sd->dev);
  1002	=

  1003		return 0;
  1004	}
  1005	=

  1006	int __maybe_unused
> 1007	tc358746_s_register(struct v4l2_subdev *sd, const struct v4l2_dbg_re=
gister *reg)
  1008	{
  1009		struct tc358746 *tc358746 =3D to_tc358746(sd);
  1010	=

  1011		if (pm_runtime_resume_and_get(sd->dev)) {
  1012			dev_err(sd->dev, "Failed to resume the device\n");
  1013			return 0;
  1014		}
  1015	=

  1016		tc358746_write(tc358746, (u32)reg->reg, (u32)reg->val);
  1017	=

  1018		pm_runtime_mark_last_busy(sd->dev);
  1019		pm_runtime_put_sync_autosuspend(sd->dev);
  1020	=

  1021		return 0;
  1022	}
  1023	=

  1024	static const struct v4l2_subdev_core_ops tc358746_core_ops =3D {
  1025	#ifdef CONFIG_VIDEO_ADV_DEBUG
  1026		.g_register =3D tc358746_g_register,
  1027		.s_register =3D tc358746_s_register,
  1028	#endif
  1029	};
  1030	=

  1031	static const struct v4l2_subdev_video_ops tc358746_video_ops =3D {
  1032		.s_stream =3D tc358746_s_stream,
  1033	};
  1034	=

  1035	static const struct v4l2_subdev_pad_ops tc358746_pad_ops =3D {
  1036		.init_cfg =3D tc358746_init_cfg,
  1037		.enum_mbus_code =3D tc358746_enum_mbus_code,
  1038		.set_fmt =3D tc358746_set_fmt,
  1039		.get_fmt =3D v4l2_subdev_get_fmt,
  1040		.link_validate =3D tc358746_link_validate,
  1041		.get_mbus_config =3D tc358746_get_mbus_config,
  1042	};
  1043	=

  1044	static const struct v4l2_subdev_ops tc358746_ops =3D {
  1045		.core =3D &tc358746_core_ops,
  1046		.video =3D &tc358746_video_ops,
  1047		.pad =3D &tc358746_pad_ops,
  1048	};
  1049	=

  1050	static const struct media_entity_operations tc358746_entity_ops =3D {
  1051		.get_fwnode_pad =3D v4l2_subdev_get_fwnode_pad_1_to_1,
  1052		.link_validate =3D v4l2_subdev_link_validate,
  1053	};
  1054	=

  1055	static int tc358746_mclk_enable(struct clk_hw *hw)
  1056	{
  1057		struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
  1058		unsigned int div;
  1059		u32 val;
  1060		int err;
  1061	=

  1062		div =3D tc358746->mclk_postdiv / 2;
  1063		val =3D MCLK_HIGH(div - 1) | MCLK_LOW(div - 1);
  1064		dev_dbg(tc358746->sd.dev, "MCLKCTL: %u (0x%x)\n", val, val);
  1065		err =3D tc358746_write(tc358746, MCLKCTL_REG, val);
  1066		if (err)
  1067			return err;
  1068	=

  1069		if (tc358746->mclk_prediv =3D=3D 8)
  1070			val =3D MCLKDIV(MCLKDIV_8);
  1071		else if (tc358746->mclk_prediv =3D=3D 4)
  1072			val =3D MCLKDIV(MCLKDIV_4);
  1073		else
  1074			val =3D MCLKDIV(MCLKDIV_2);
  1075	=

  1076		dev_dbg(tc358746->sd.dev, "CLKCTL[MCLKDIV]: %u (0x%x)\n", val, val);
  1077		return tc358746_update_bits(tc358746, CLKCTL_REG, MCLKDIV_MASK, val=
);
  1078	}
  1079	=

  1080	static void tc358746_mclk_disable(struct clk_hw *hw)
  1081	{
  1082		struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
  1083	=

  1084		tc358746_write(tc358746, MCLKCTL_REG, 0);
  1085	}
  1086	=

  1087	static long
  1088	tc358746_find_mclk_settings(struct tc358746 *tc358746, unsigned long=
 mclk_rate)
  1089	{
  1090		unsigned long pll_rate =3D tc358746->pll_rate;
  1091		const unsigned char prediv[] =3D { 2, 4, 8 };
  1092		unsigned int mclk_prediv, mclk_postdiv;
  1093		struct device *dev =3D tc358746->sd.dev;
  1094		unsigned int postdiv, mclkdiv;
  1095		unsigned long best_mclk_rate;
  1096		unsigned int i;
  1097	=

  1098		/*
  1099		 *                          MCLK-Div
  1100		 *           -------------------=B4`---------------------
  1101		 *          =B4                                          `
  1102		 *         +-------------+     +------------------------+
  1103		 *         | MCLK-PreDiv |     |       MCLK-PostDiv     |
  1104		 * PLL --> |   (2/4/8)   | --> | (mclk_low + mclk_high) | --> MCLK
  1105		 *         +-------------+     +------------------------+
  1106		 *
  1107		 * The register value of mclk_low/high is mclk_low/high+1, i.e.:
  1108		 *   mclk_low/high =3D 1   --> 2 MCLK-Ref Counts
  1109		 *   mclk_low/high =3D 255 --> 256 MCLK-Ref Counts =3D=3D max.
  1110		 * If mclk_low and mclk_high are 0 then MCLK is disabled.
  1111		 *
  1112		 * Keep it simple and support 50/50 duty cycles only for now,
  1113		 * so the calc will be:
  1114		 *
  1115		 *   MCLK =3D PLL / (MCLK-PreDiv * 2 * MCLK-PostDiv)
  1116		 */
  1117	=

  1118		if (mclk_rate =3D=3D tc358746->mclk_rate)
  1119			return mclk_rate;
  1120	=

  1121		/* Highest possible rate */
  1122		mclkdiv =3D pll_rate / mclk_rate;
  1123		if (mclkdiv <=3D 8) {
  1124			mclk_prediv =3D 2;
  1125			mclk_postdiv =3D 4;
  1126			best_mclk_rate =3D pll_rate / (2 * 4);
  1127			goto out;
  1128		}
  1129	=

  1130		/* First check the prediv */
  1131		for (i =3D 0; i < ARRAY_SIZE(prediv); i++) {
  1132			postdiv =3D mclkdiv / prediv[i];
  1133	=

  1134			if (postdiv % 2)
  1135				continue;
  1136	=

  1137			if (postdiv >=3D 4 && postdiv <=3D 512) {
  1138				mclk_prediv =3D prediv[i];
  1139				mclk_postdiv =3D postdiv;
  1140				best_mclk_rate =3D pll_rate / (prediv[i] * postdiv);
  1141				goto out;
  1142			}
  1143		}
  1144	=

  1145		/* No suitable prediv found, so try to adjust the postdiv */
  1146		for (postdiv =3D 4; postdiv <=3D 512; postdiv +=3D 2) {
  1147			unsigned int pre;
  1148	=

  1149			pre =3D mclkdiv / postdiv;
  1150			if (pre =3D=3D 2 || pre =3D=3D 4 || pre =3D=3D 8) {
  1151				mclk_prediv =3D pre;
  1152				mclk_postdiv =3D postdiv;
  1153				best_mclk_rate =3D pll_rate / (pre * postdiv);
  1154				goto out;
  1155			}
  1156		}
  1157	=

  1158		/* The MCLK <-> PLL gap is to high -> use largest possible div */
  1159		mclk_prediv =3D 8;
  1160		mclk_postdiv =3D 512;
  1161		best_mclk_rate =3D pll_rate / (8 * 512);
  1162	=

  1163	out:
  1164		tc358746->mclk_prediv =3D mclk_prediv;
  1165		tc358746->mclk_postdiv =3D mclk_postdiv;
  1166		tc358746->mclk_rate =3D best_mclk_rate;
  1167	=

  1168		if (best_mclk_rate !=3D mclk_rate)
  1169			dev_warn(dev, "Request MCLK freq:%lu, found MCLK freq:%lu\n",
  1170				 mclk_rate, best_mclk_rate);
  1171	=

  1172		dev_dbg(dev, "Found MCLK settings: freq:%lu prediv:%u postdiv:%u\n",
  1173			best_mclk_rate, mclk_prediv, mclk_postdiv);
  1174	=

  1175		return best_mclk_rate;
  1176	}
  1177	=

> 1178	unsigned long tc358746_recalc_rate(struct clk_hw *hw, unsigned long =
parent_rate)
  1179	{
  1180		struct tc358746 *tc358746 =3D clk_hw_to_tc358746(hw);
  1181		unsigned int prediv, postdiv;
  1182		u32 val;
  1183		int err;
  1184	=

  1185		err =3D tc358746_read(tc358746, MCLKCTL_REG, &val);
  1186		if (err)
  1187			return 0;
  1188	=

  1189		postdiv =3D FIELD_GET(MCLK_LOW_MASK, val) + 1;
  1190		postdiv +=3D FIELD_GET(MCLK_HIGH_MASK, val) + 1;
  1191	=

  1192		err =3D tc358746_read(tc358746, CLKCTL_REG, &val);
  1193		if (err)
  1194			return 0;
  1195	=

  1196		prediv =3D FIELD_GET(MCLKDIV_MASK, val);
  1197		if (prediv =3D=3D MCLKDIV_8)
  1198			prediv =3D 8;
  1199		else if (prediv =3D=3D MCLKDIV_4)
  1200			prediv =3D 4;
  1201		else
  1202			prediv =3D 2;
  1203	=

  1204		return tc358746->pll_rate / (prediv * postdiv);
  1205	}
  1206	=


-- =

0-DAY CI Kernel Test Service
https://01.org/lkp

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
