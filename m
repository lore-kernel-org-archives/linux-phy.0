Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5263F606A334
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=X2osdTrT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=c0WNWCEm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jpFCxJ86
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=eGfh8V7kbRm0zbIqZT8oYEEZ8Q8HCAmMLAoqrxcv1PM=; b=X2osdTrTEZDRdz9ilaHW7FiI1w
	Ywtito3labmdmbkqFdG5kRhuEWHuWoy2NVbGXd82dnlZe8VyARqrdmmuqz1KLeXy/q/y1CH9CS76k
	J59ngKNTurE63eeCfTxpaKlNYSirlW0VvEm4C/GsqGaMden1K7oUrWJhetLcbiGUoKvMznImEYBHQ
	lqjX0xhCm60iC5saCo0UBcWnHtKAGQS7tu5xTBKFt0owFp7VPYvLiP9uRl/tnydrb9asK1t90nkI5
	AywDr1RmNqUa0I97mPFByrTtIuPP7t7AJmTS/V+cHOwM7DQHUrpbwuYJESgOBRByhkKWLmcY3l8g2
	OJOexq+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpKB-0000000GBCn-0DIe;
	Mon, 02 Nov 2026 10:31:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpK6-0000000GBB8-3Mou
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:31:34 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A299wrQ3402412
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=X6G6eDi1zFvPjRe676iwk5
	aDRyp3vEtrjiUQ2k5SddU=; b=c0WNWCEmf6PuG5yqMvD+XbsBL10l9uPueD4R0Z
	GmQBiRyFG1lIi6+bL/Gk6Q8Of9yD2xIrzF/NzFkiKzo9IlHr1JeuzcTXGIjKuveG
	doEFnvIDapjoYLwO9CoRs9FdUc+EYcIfEgysfec46tMHvLsamo1UsAW6JnjK37vt
	Z9Myiq/1jlputvFZOgNNVgOgpJrUskv67npg+rgLye9uJ8GLCSk5qaS/7mj4krdl
	YUWJTwTum99S+3qsIB8dKWskKcMVl9SeghqV64pi2rylZSV+Q53iM4LCc/YFYlUr
	Nkz3tAYEchLAKWTrnDZWZ6rQXzU1dDyIAdnC/O9d/GktlTQg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hppfe8nvm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:31:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91c7886e8dfso62200326d6.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:31:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793615489; x=1794220289; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=X6G6eDi1zFvPjRe676iwk5aDRyp3vEtrjiUQ2k5SddU=;
        b=jpFCxJ86gvBs9kYWNiW2V+lOxPi3gvn9N/CxAzVbviLRC++BlkhG+QiLTGcCsKB+Uq
         oKri+Ajyx6gUSeMnGisO4AU8Eig1fhFmHFHw6NjcIedmB6QLd178l9Mj8s+DUWEwBorS
         5Wsk/0//PGvKpq/Ux66WXqnIFo2lGbh3yINHoSRGa0zmvLuysa0nfoD6ULaHm1WWiXyc
         FwsB1M99vEbWbeFWd3ETWv9eMU2rxNj2qDazDHB5RODxMh8xfLMZiq9Dz9KJrMeLByGd
         30N3IcrVO1/huKY1hCMQiLdu1uv+xuLKV5xhfSjeWwc2mQisQSPWHXYtAlFNOj9NAGv3
         0XrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793615489; x=1794220289;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=X6G6eDi1zFvPjRe676iwk5aDRyp3vEtrjiUQ2k5SddU=;
        b=oc54Pkd15lVMvg/UYstnZ+uRxE2B8lNmhmh9fe95hRojbk9cxm2cBHxn/LaKyLEJmE
         //kKijJhj/fiBhcLbyXf0ZrwsXTLXJoCMfv2ychaA6pAoPbpoN7kFoJ+nxsCKgaBteKC
         5WZACmeynf5Ns774UACFeuJzX/6BMcBnyT9oVQabCAIs8/PVWA0yT7LLSL1yegky93tH
         pcvJhZMNIbTzkHwCphAyvYkHzUNdACE2YgIZg2S7fCHLuJS2rHMjqLe0Wm7IXyZL8mMd
         9GYZVWhnIHvmsUy64tc+vzCcz5Xjk7BrnBoQwzV7Os3q13Yjfa2+/6oGGBcKM99slj2r
         4HTA==
X-Forwarded-Encrypted: i=1; AKwUvBysUpca5cyMunRRkqJLraNA88SZmT5xVeilV9gYUnXZx6BmTQvLjy0s3oLPJ5Tirv+RCBkIs9gzeS8=@lists.infradead.org
X-Gm-Message-State: AFq9FYJpiRUcCCaNSM7FpDfPIWUwEJKErZfd4l/X+v1tCyMrldgHZg6r
	+wq/jUybiy2b6hc05OsDOb4m2GCq5Kxhqb/OFZYImpFz/mb2IJukKhs3klxwJDNC5Q+FTwQUENG
	/60YaEFpKP/XKau9w1F24V+WeID7yjaCQWlchWM1R2jXF6wMOKIk/zf03HReSxZYh7/Gg
X-Gm-Gg: AYBFou26VhnQWayIOzSf0gPWhAuN/k+K675ovI4lHPKcmyj7ZtmfYGmgQb13CgQe0al
	BJ6RIjq8cejjfo9mPWGcztiPrKFbszp1rfwsILhiDx1YPHMizJ/jYZ5hh90Pejsl/HIsJWkGd17
	qyX6v1v/ljk3eoA+ld95PGuhDflZ57XRKRfOoaxHJSMi2WN36He4FC57EkcFOtxuh0A/DOrIS9u
	ISjXZnLuP9VyMQ7h/LRD9Cjoj8rip5e9NtN/EH2a2ecxb2j9m5FX3vHw3rWGy96yClivN4FBiq1
	Xw8Tyvj0nxZdHIuq8/pvmJE3vOryo7t9Hnhkpc7+jY8OcSInsAfsNIwhjR3fDFdonA4LL8xuDpM
	CsNieugkquHi0KuLjFA9/E1vQdwotVDEvs/aXeG4+6hekIJliqaxMRQOlgbEPW8C7e7aPu+mKeV
	oBfg==
X-Received: by 2002:a05:620a:260e:b0:93e:6b9e:6167 with SMTP id af79cd13be357-9442171c757mr1422080885a.16.1793615489199;
        Mon, 02 Nov 2026 02:31:29 -0800 (PST)
X-Received: by 2002:a05:620a:260e:b0:93e:6b9e:6167 with SMTP id af79cd13be357-9442171c757mr1422078285a.16.1793615488619;
        Mon, 02 Nov 2026 02:31:28 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7c5063e3sm327847885e9.0.2026.11.02.02.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:31:27 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v17 0/2] phy: qcom: add the SGMII SerDes PHY for
 firmware-managed systems
Date: Mon, 02 Nov 2026 11:31:19 +0100
Message-Id: <20261102-sa8255p-eth-phy-v17-0-aa138f2912a0@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHdm6GoC/2WNwQ6CMBBEf4Xs2SVttQU8+R+GwwYX20RobZFIC
 P9uJd68TDKTmTcrJI6OE5yLFSLPLjk/ZiOrQwGdpfHO6G45ACWUkUIoTFQrrQPyZDHYBQ0J0zR
 9U1NFkFchcu/eO/LaZm9dmnxc9odZmm/8g8nTHywXUKA5StFTpxXX+uJTKp8venR+GMos0G7b9
 gGjr1fvuAAAAA==
X-Change-ID: 20261002-sa8255p-eth-phy-6a0699f98a7a
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5874;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=8vCGy9/7sKiImVi9rZA9qfojhdTV0k1wjZeJxbHjq0c=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq6GZ7BAH01WmS/Wo3hQftVOORD0nMG3Oa8gZN+
 CZlk9qlqDiJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCauhmewAKCRAFnS7L/zaE
 w6XbD/4qsZmO+n0YYpPG6B/gYIJ6y32akfpdd7Dk84S3weLaSFH4W3jsTLeZPK8LJqjkugwpnz0
 Khv6lhbMkDLe3xXS2zVjZ44aMnNWRzkX6Pi7kFUxQhZ2SE3Wjs1R1zXNh6V/zYQu45Tt2me2sg6
 SM12QUULzctYv+P47VC1nwrpgX+weOYpFF3giebPWDG8WDm7TzsEDOi0F/xnoCfpvRvKsi8V+jK
 LbW7zIzrXSxWrERy3cQxALg/V465nzERV7pji6wPFunuivCupBoJeM1nofY9/hJKTrTJiT3dg1K
 BpV9OyhVEtt5GczvDs+WVDt9+7mkdPxfuV6Y2Y+fTKgdosDONwu32sqHJhIkR7YFovwLlXf3muL
 T9Znh4HO1GLWdBO/0EW4Dh9R2JNrxIfGYDfYMlXZOaE4+tIhXqEinKR6MKZjEZEYDB0jT/itXb8
 u+z/reErzBAU895wL+5dRuQEe+mGBVOu2xKWdyLC+EjrGjywn1vWgEMbV2JCXtfTPXk+9uUXrDO
 SD4SdolJiyL0YyIlItMhEuscqrx8DWT+5GjUAwnAjCK5oIpEF7POpIoNx22cMc3ol9SGl8dg5J3
 skrzowDb4tPucXw4U9i3FgxXO0OaVDS8+lFI7KU8pj5sh1mAEVksZhCehyxojui+l13eZCRoaol
 OCyJQKultaV3o6Q==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=SeZi5fRu c=1 sm=1 tr=0 ts=6ae86682 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=PHq6YzTAAAAA:8
 a=h8s98YD0dNPsP74th3cA:9 a=fjkezMsj8msYObTX:21 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MSBTYWx0ZWRfXw1JbpSY+UiiK
 vbmao6HmByNuYGyHThfNpV7iEC9rv07WLdHOaGqRPiLd4d9+5nBB4G2X7TF4edvSe64fD0haniG
 EUq/ifSDCLrBjK+qschDu0EjHR+zzNctYowGfu38HXo68+YBa4ZgaWSF/ilYOl46GiNrK2zEyXm
 oY2mQzN/d5EotLh4obcDtxbda/3MYfKd8IfC/KAQjDx2lYnyJKdn8IsuNsP+JKKVr3ZP3XozJvd
 V557Pb3YXEUi8GN/EeEMPsOl8/P4BvKXSUffdAVs26IPxO9rT3aFb+oomL4ONFUuapyK703q8s5
 YCM7gclnQCxAhvurm06It2IAlx0LiDIo0hcZykb6Sv4n0ElfTPgvi19HXb/W/xr2p4tIvQajU8n
 kXCP6ZAqinMIwC4hOcKGPiu91BmjJCl9sTBBzPPjurxRk9201SDqxzR1GMlU2nHl0af8yeTx/5+
 l2FO05oz2mVU30KDQuA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MSBTYWx0ZWRfX/y2fYwH+GiTH
 eGp/A+yaP5BSu0bI5GFsq0iDa14lpWELIyPABSr/mN+bcSepcjEZgx5DYhurOgCJajbujmSYfU/
 dS715FT172MqzCc4uAtbVK3yIHRkML4=
X-Proofpoint-ORIG-GUID: GJGV5PU_EU-zFtBBto1Wu6hn52NXQiHl
X-Proofpoint-GUID: GJGV5PU_EU-zFtBBto1Wu6hn52NXQiHl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_023130_872613_08553820 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

As Jakub suggested: I'm sending this separately targetting the PHY tree
as there are no build-time dependencies on the rest of the series.

Vinod: this should be good to go, there were no more sashiko comments
and this is just a rebase + a commit message tweak.

Add support for the firmware-managed variant of the Serdes PHY present
on the Qualcomm sa8255p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes in v17:
- Extended the commit message for patch 2 (Manivannan)
- Rebased on top of v7.4-rc1
- Link to v16: https://patch.msgid.link/20261014-sa8255p-eth-phy-v16-0-6310fac52e85@oss.qualcomm.com

Changes in v16:
- Split out the PHY patches into a separate series
- Set the SerDes line rate through the OPP API
- Link to v15: https://patch.msgid.link/20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com

Changes in v15:
- Squash patches 6 and 7 to avoid a potential hang-on-resume regression
  (Sashiko)
- Fix the AUTONEG_DISABLE early return path in forced mode (Sashiko)
- Fix Kconfig dependencies on generic power domains (Sashiko)
- Set the performance level back to 0 on unbind in the PHY driver
  (Sashiko)
- Use devm_pm_runtime_enable() where applicable
- Link to v14: https://patch.msgid.link/20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com

Changes in v14:
- let genpd's own runtime suspend/resume callbacks own the perf state entirely
  by calling dev_pm_genpd_set_performance_state() in set_mode()
  unconditionally in the sgmii PHY driver
- drop usleep_range() from the PHY driver when setting the state as the level
  setting is already synchronous
- add missing power-domains limits for ma35d1/k3-dwmac
- fix ordering of clearing the sgmii loopback
- configure the wrapper clocks synchronously in scmi setup
- Link to v13: https://patch.msgid.link/20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com

Changes in v13:
- Reapply OPP on speed change in the PHY driver
- Use linux/device-id/of.h instead of mod_devicetable.h
- Fix the "invalid PTP clock rate" warning on sa8255p
- Add commits necessary to allow correct link speed change with SCMI
- Link to v12: https://patch.msgid.link/20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com

Changes in v12:
- Drop the power-domain-names from the SGMII PHY DT bindings
- Add missing Kconfig dependency on PM for the new SGMII PHY driver
- Link to v11: https://patch.msgid.link/20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com

Changes in v11:
- Take a new approach: add a dedicated driver for the firmware-managed
  SGMII PHY and simplify changes made to the MAC driver
- Link to v10: https://patch.msgid.link/20260323-qcom-sa8255p-emac-v10-0-79302b238a16@oss.qualcomm.com

Changes in v10:
- Fix unit address in DT example
- Link to v9: https://patch.msgid.link/20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com

Changes in v9:
- Rebase on top of current linux-next again
- Link to v8: https://patch.msgid.link/20260311-qcom-sa8255p-emac-v8-0-58227bcf1018@oss.qualcomm.com

Changes in v8:
- Rebase on top of recent changes in linux-next which required an
  extensive rework
- Drop partial R-b tags
- Link to v7: https://patch.msgid.link/20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com

Changes in v7:
- Restored the correct authorship after learning git uses .mailmap for
  the --author switch
- Rebased on top of changes from Russell
- Fixed resource management issues in error paths
- Link to v6: https://lore.kernel.org/r/20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com

Changes in v6:
- Fix $id value in the bindings
- Drop patch 3/8 from the series
- Update init/exit callback signatures
- Link to v5: https://lore.kernel.org/r/20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org
- Link to v6: https://lore.kernel.org/r/20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com

Changes in v5:
- Name the DT binding document after the new compatbile
- Add missing space
- Make the power-domains limits stricter
- Link to v4: https://lore.kernel.org/r/20251104-qcom-sa8255p-emac-v4-0-f76660087cea@linaro.org

Changes in v4:
- Remove the phys property from the SCMI bindings
- Mark the power-domain-names property as required
- Set maxItems for power-domains to 1 for all existing bindings to
  maintain the current requirements after modifying the value in the
  top-level document
- Link to v3: https://lore.kernel.org/r/20251027-qcom-sa8255p-emac-v3-0-75767b9230ab@linaro.org

Changes in v3:
- Drop 'power' and 'perf' prefixes from power domain names
- Rebase on top of Russell's changes to dwmac
- Rebase on top of even more changes from Russell that are not yet
  in next (E1vB6ld-0000000BIPy-2Qi4@rmk-PC.armlinux.org.uk)
- Link to v2: https://lore.kernel.org/all/20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org/

Changes in v2:
- Fix the power-domains property in DT bindings
- Rework the DT bindings example
- Drop the DTS patch, it will go upstream separately
- Link to v1: https://lore.kernel.org/r/20250910-qcom-sa8255p-emac-v1-0-32a79cf1e668@linaro.org

---
Bartosz Golaszewski (2):
      dt-bindings: phy: document the serdes PHY on sa8255p
      phy: qcom: add the SGMII SerDes PHY driver for SCMI systems

 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml |  50 +++++++++
 drivers/phy/qualcomm/Kconfig                       |  11 ++
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c     | 113 +++++++++++++++++++++
 4 files changed, 175 insertions(+)
---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20261002-sa8255p-eth-phy-6a0699f98a7a

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
