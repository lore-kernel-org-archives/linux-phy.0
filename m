Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C31C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SCpoHLf72WmazK23qiBWPstmuyr1nPiHvTMCUvBmZzI=; b=4W1IM2J4zmqKKX
	sNf7p0s35oYmm8ShnAgLjggZ8S5bzQRQ+2497sOtfhlxOXVR0Nbf89NgktF0hJ+edH24bQFudEg0y
	rBzsa+lX5jQrW8KZvOGelwbA35F7bjZATvAcHGyR/znahg/GgADoyxYJjz+O9kfqOflafFdyqdcTS
	Eye1aOw5BV/eLolmI5HUcBLAXaKh/VHaV0FQvWH8lEeQdVuhWbv5SFJiBSEwTMW9oWGjU8zfNKdW0
	cGjQAbInfxIfJZDPwx7cOlu1oCrQVZANO+wYsmklKGFyclya2C8tYgetoGCrFzfVhmxQC5rZUR/iS
	h4FByC/8G3Me3aE7hKYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt7O-00000005V75-0fst;
	Fri, 28 Aug 2026 09:43:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt7M-00000005V5i-0gHg
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:43:25 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67S66lOB2045970
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 09:43:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=IL6ISL0hv0f3Z4TUu5iP6+
	5b/NRFnwrL3QiItq2cUnc=; b=cUrcCq5jBLXSAv7EIUshZ+JIzIL0uX5bicKJv2
	oPq1W7XJswXzNFigNOmFvRlkJ6R2zsXfSQcR7VMhoJcgXFnmz5JHhyrphw2OOJ/m
	HQ4s5ZjvWwaG2eBFYTuX0UK49zSGWW1QRBNSEoA9hqAYU32mNqy+suyRfFA9lV2C
	MrSpk9StD/a4BqUCbs0OSD9A+cO1ii7A3TaPB+AU4YIr9v0R24fgfobp1FT49oN7
	hBZ3V3eyxNRNMmlcSp7Babo21Y8+Imd6cUVYH+BLJHeGW0nQ1FKp0aThYnw6cEx1
	DGvj/d8SWVIoR2fJHUk5o4w0OmfVm6tYRORJpmM+HZIOGbLQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb1v39j42-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 09:43:22 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38e22137fb3so1542343a91.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 02:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787910201; x=1788515001; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=IL6ISL0hv0f3Z4TUu5iP6+5b/NRFnwrL3QiItq2cUnc=;
        b=RI8d3ZdZn3OhUUniCqh6FZw7rZHoHX32ZOHVaeMnooxUhj+odmY+JCjw36NyTbar8V
         lncudwzXZ6EyL31Mg7JKAAewkgCzYW7IQUbK03K11IXl9FUIYJRiAqq5ijm5JdRaud9M
         kvYtCef/ky3/2LYpkbin7QZ+GZExakhadf35WxY3OwFlV3DBdPYA46si+Zm2oJlqVOSh
         Qj2pNDgdE7yKPAT4SiPEEtFTokxBUGGJeEdzPsmWRFpIGwhD1y/PYPd6GdlnNPhprXZK
         PEZvPAL6i2ezQoA4FgmLXznTTYI7xfTrNjBDOahbrRpyr12baoCrb36K4y5Pheuv1viz
         REUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787910201; x=1788515001;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=IL6ISL0hv0f3Z4TUu5iP6+5b/NRFnwrL3QiItq2cUnc=;
        b=k5xa+rPiWb0q5Rzycr+rJo6ar6IZhwUQEHDRuwDOlI5BpdPLa4oO/H1O9eRzDgQ9/6
         3IBia1T+NKqMpz/5PMCXgrKUKOvFiQVWm6Q1Fwa77ANLhxf2kv1ALpNeE2BA0AcEkNyT
         870okGTzbT0GPys915XWjY/cJncnC7UVyJWp5b9Efd0I1Y6wA90HlRgyjq7rx+shs/gh
         DVo65a7dv8DYFmNXE056mgRDN1Kpz54EFQm8eUUrqNPn7jsnjKeHGnqDw9T2kKMTImdf
         /AY90FLtb9D+hcmoWJKlkUWCohhH07cpGGJh5B8nhLKruFNpRfUTQRfjqeEUQ2ih4uO7
         yWtg==
X-Forwarded-Encrypted: i=1; AHgh+RrijKeQjrx/ft1cMqm1FLg1qfdoPHONlPBnUBkmQjc1AZWrwokXngCdFQBD6+Fm8R81U+qnP2lTkqA=@lists.infradead.org
X-Gm-Message-State: AFuF++lp340ULRDm9SkqnKX0digZne4lh7XTIbZ8F0lH8OwNyaShbycF
	zZvFnVnSnN28jOZ5FlcKsiU8u2GnJMtpD5SOBweZg+V4oVngxG5P3vIQAeRmK+iW/ohCrADtGY8
	TMtxgu6Qjk8NX7yzF+/LEg7ji/DneKFzGTy61bCOmsxv5QQAM2V/0D4XsALSCbmAe3EE0Ja6/7q
	sh
X-Gm-Gg: AR+sD12lTroGHG42k+yT8P7L+XV8x4xGsJRAJCGrG/Oh8DHcp7yGyyb+zi5vwkgO1mK
	Y0JXsmae174G78v0lHg9S5eehhElHXG3xSIpaJB8OR+gPad/KjqpE6BygmKo5wOXvWUgDk+Sb2s
	IKbRlarQt1qBNVFi7jNOctyIkt0CgwIguTae64nXosX3NMRAAIFEjC0ajcwvx7iKqazb2aI7c1x
	6SOOZi+5puIVZofmucrvi8hQd5vzsjtNrIJ0zfL1zEL9PdVNhR5Dcxz3cHYcgnco5RXk8c3eZXR
	GjZN5Hd1p7GzCme2ARN9PGplyD7ApjgAyradD840eijsq76O7rI+iDPJNXf/8iyIMYBO7mCYY+P
	8iQNCA+CSB+ZLueBeqwdDwnDM8lc=
X-Received: by 2002:a17:90b:5905:b0:381:a766:efcb with SMTP id 98e67ed59e1d1-396d0d7b94bmr12044401a91.4.1787910201150;
        Fri, 28 Aug 2026 02:43:21 -0700 (PDT)
X-Received: by 2002:a17:90b:5905:b0:381:a766:efcb with SMTP id 98e67ed59e1d1-396d0d7b94bmr12044310a91.4.1787910200671;
        Fri, 28 Aug 2026 02:43:20 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f995e60sm4166331eec.22.2026.08.28.02.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 02:43:20 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Subject: [PATCH v3 0/4] phy: qualcomm: qmp-combo: update DP PHY PLL
 programming on Glymur
Date: Fri, 28 Aug 2026 15:13:12 +0530
Message-Id: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADBYkWoC/03MTQ6CMBCG4auYrh1Syk/BlfcwLmCYQg2l2AKRE
 O5u0YVuJnmT+Z6NeXKaPLucNuZo0V7bIURyPjHsqqEl0E1oJrjIeSFSaPvVzA7GboUlgTqXmEo
 uGlULFjajI6VfH+92/7af6wfhdCDHh3LWwNQ5qn6uFPG/i3ZQsMQQg8Si5GWWCczoar2PnnPVo
 zUmCoft+xsSx6AJvwAAAA==
X-Change-ID: 20260824-glymur-phy-v3-b67c4702dfb2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787910197; l=2616;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=pC9GmVu8vixHFFaIL7xI69c0nSD8i3sS2fz+bphruVE=;
 b=KZVFZMHF9vWVCtJj0lcUzHQBLkiyFjSaOAlxQdnRO4Jcuzt44NdDH2YNNC45hYvPgYOtrkXYe
 18rQymH2mbRDugeEUUWsRrbhWQtsQT22uPRk0G5M88/1MoQr7MSlu43
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA4MiBTYWx0ZWRfXyhvWlVdmecbk
 wl1+nCzHVoQohmS41JXHBdaVwAcjcACU/5KdRzeTDsAq+MYlQK4MC8W77FkuwEp7iVqaubAWUvS
 5A214ZModBkePVkysWbl56vU3ZZT+rHfd/Y0eA2r86e5Y23nzKecC3TXZVgiSScxSIX5xTdbZBG
 XyLksxlPm7eEwXLSMZP2r60ReMAKFycbQDwApjGmcE1Ya+eGqP9C1ff8wfY/s4uz6WfKG5vzN/4
 a/Y6OoFjYBBqU1TME3YF+ahNGspPJVrnUKHZEVLo+Ib4GYWyNMXBdctSraTe7K57kU7cDByn7ms
 Slxt3BTIXrFht7vZW2V32OmK6DzXc2bsC0qlESVs+sfDCUKEremjFr2R5uLUpwVyWmldTubmPIA
 0B2sJiUMrtysqcmxVcQEHQmG6/TJMf/DrkBERy1UCOMHS/cUmbA8xvpYBywitT+VZ9fMaBsWn8x
 wnO6hH/sVkn3ufYCl4g==
X-Proofpoint-ORIG-GUID: v2aNUmuqa2zZlLa7D297ctik1_YYsog4
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA4MiBTYWx0ZWRfX2o8queZDdSfn
 rf2xB4YVqKH1t3Ig6jHhWPj5vzhPrnrLYmGDq5q20DcIfKmsdCOhI/H8ikAWVdTJp7deDZFty0R
 9ac5ghlAx+b4vcnEW65ky5U/UfNErHQ=
X-Authority-Analysis: v=2.4 cv=faedDUQF c=1 sm=1 tr=0 ts=6a91583a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Y8YhYyvsSxd9IuhXD04A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: v2aNUmuqa2zZlLa7D297ctik1_YYsog4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_024324_337600_B203C541 
X-CRM114-Status: GOOD (  11.58  )
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

The existing DP PHY PLL and AUX configuration for the Glymur platform
does not fully follow the Hardware Programming Guide requirements for
DP over Type-C, which results in DP link bring-up failures.

Update the DP PHY programming sequence and PLL-related register
settings to align with the latest HPG recommendations. With this
change, DP link training completes successfully on Glymur-based
platforms.

Fixes: d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and
settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Changes in v2:
- Use the DP-specific v8 COM status register definitions
(DP_QSERDES_V8_COM_C_READY_STATUS and DP_QSERDES_V8_COM_CMN_STATUS)
instead of adding new N3 USB/DP variants.(Konrad)
- Drop the qmp_v8_combo_configure_dp_mode() implementation and
reuse the common qmp_combo_configure_dp_mode() helper, restoring
orientation-specific DP_PHY_MODE programming (0x4c/0x5c) and addressing
review comments regarding DP_PHY_MODE handling.
- Include phy-qcom-qmp-dp-qserdes-com-v8.h for the DP COM register
definitions.
- Update patch author to Ritesh Kumar.(Konrad)
- Link to v1:
  https://lore.kernel.org/all/20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com/

Changes in v3:
- Split the monolithic patch into a logical 4-patch series (Dmitry):
  - Patch 1: Add DP COM v8 header and fix register layout
  - Patch 2: Update DP PHY common init tables
  - Patch 3: Update link rate specific DP PHY tables
  - Patch 4: Rework DP PHY runtime configuration
- Improved commit messages with detailed explanations for each change
- Better separation of concerns: header additions, table updates, and
runtime logic changes are now in separate patches for easier review  
- Link to v2:
  https://lore.kernel.org/all/20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com/

---
Ritesh Kumar (4):
      phy: qualcomm: qmp-combo: Add DP COM v8 header and fix register layout
      phy: qualcomm: qmp-combo: Update DP PHY common init tables
      phy: qualcomm: qmp-combo: Update link rate specific DP PHY tables
      phy: qualcomm: qmp-combo: Rework DP PHY runtime configuration

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 256 ++++++++++++++++++------------
 1 file changed, 156 insertions(+), 100 deletions(-)
---
base-commit: 903c1cf6dff9964e71eda98a39e2e5d442050472
change-id: 20260824-glymur-phy-v3-b67c4702dfb2

Best regards,
--  
Nabige Aala <nabige.aala@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
