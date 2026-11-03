Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E9E60744B5
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 10:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TstIgRfr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=SJRFr41n;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ZXKpcEdO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=1Stu1iKiXqXIw0SMyuvSlL0Wbvsi5/v//+VcqHmASIs=; b=TstIgRfrLG5Hg1PBqgqzbemHe4
	grMOH1YlK3EcBpEPocuMiThD0JogQes2CqTUjtYlWDVjHi8nCxSjzr2JGoYCjI3ExzX+Sxui+dRfS
	oErH3eiKEmUyVqmdfRd4zhsWOKXWNl6FtXlY3vgUkYWgi/iCl/kvpHQgePH28HkWDu5bjGfOqPTq5
	zMgmL24faKSFK4Sy+lhBUisCIiDsHSFRo/ulvH2YlVV7oio3wt7cmpsELvvOMRKW6m71HYrrlxLSH
	uED9/QOxqsPyL90jbRXHAPc16vkhY/t2Zu2xqLfwkqsdZm2e9Ccd5kX+uspDXaXLGNUc6GjobX0Rq
	hCo0SALg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBs7-0000000223f-3mp0;
	Tue, 03 Nov 2026 10:36:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBs3-0000000221q-3YoS
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 10:36:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3AAXDC2201960
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 10:36:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=N4mxJ0Y2k5Qh49aihQ4X/Z
	oRxoT90NExmpfeJitopTE=; b=SJRFr41nDTEAa8Vd+01B8axC5RAJQUezRdR+gJ
	ErRBUscEfRFBr3ag0txwWmyOKylWngykDi6su0Jy1A7EQkK4DsSTYdD0PcfAlU4j
	K/E2FCB7ZuB7A02hy3gsYS5q986fWE5u68lPF3XZkFdIBnrlVo/IFGipMSdIdrgt
	XZu1qW8HZxztlJSgnwrlfPHxC6R8qPIPG+qXONcv/JoOrBG885JequIWTTjuZiGy
	13B8xt4Jm40gbOEcE5RZ5+XZoPXDTSGxPOfW2PlA2ZT2cKTy+aiwWl7o5v9y69Aq
	c74BBEqUGLst2X9zJSP3khSoJtIYLGAWfFvhzkkFAHUDjzFw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq07r3a2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 10:36:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93caf6c528aso568598085a.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 02:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793702161; x=1794306961; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=N4mxJ0Y2k5Qh49aihQ4X/ZoRxoT90NExmpfeJitopTE=;
        b=ZXKpcEdOXLomLFXhQVeY5843zBV8JwWsKhwrs6JQelExsTmeVxfijsOjdagzeFqDIF
         eYJ85MTO0LP9nGqTPYKJVEd//56KbQZ0K5+7GV8TEWSUJIE+kpc2lwuCqmXmF5YZpRBe
         EMzrx4KqUg/XmY2blnXYaZS+3Ui08wET0EJY0qRzY6qhYGfqh+pFvDXKiquUc5Uw+/Zy
         wqpXFdvHmeMQLR83Je1cBPxIZu17OUmIfusP/THk9WB/ao3vHBshg1iOqF0mPNmy/LyH
         DWap9MRqorZoEWsxyxzZ8nU6kux5ucNpjHNSyKFLgCyXUZeqMwP1oqzAPxNnL1cONczh
         adJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793702161; x=1794306961;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=N4mxJ0Y2k5Qh49aihQ4X/ZoRxoT90NExmpfeJitopTE=;
        b=OwWs3lMQEWf9Fu3DjkAxvgV5I+WnVsA/VqQsM7n/2IO7JT6AcYdguEFSNs9LDaOH5a
         sdESunKnS/83rjVUH8DkhNu2qtGGfzJG0WVcf1Gp/O8KfKqxiw/rKYEFVGqSVvamE64E
         T94bHP2Vs2VNEwCQYGix9L3ze3D2Ab+jZgWFmUEh6L2yO2WbTLgSTOe6RRnYoZtbElTT
         WIiDyOa2DPRSuvQFD5Thm+0SZe5SwDXtSBssgurGRq2T0wx1WfOZXZZO40k+/wzxxKTD
         EuSWcmiZ3cNPn5s3J8+pcPU4mlRtZmKL0zs7W/HkN5UPmjJolSDLQ9CSEkMySx3Dj13X
         97KQ==
X-Forwarded-Encrypted: i=1; AKwUvBxXYxUURKwQHHuJnMs0Gq9RT0JVN8tEgnNSjimVhbXCZYEcuz+byMSJ6KwN7FJQzzar9ra2jx904LI=@lists.infradead.org
X-Gm-Message-State: APuU4Z/lWLId+YaniJ/TnoVJX6PNNgQQ+BxUkJ6FBrufDXwNGtfo7i7u
	Q+KjLsn/Cnz2Llq027q82GbBqIoxTnX2nKalA7eRzMvQkghbmQoFykj+cjnW6jyTzE2gA/Lq51t
	SAAQKvaL3imk/zNSMhCQEhyVXqmO+wjjW+U84HHgS6t7QXmAHxGZskDIPz2TLHrqxWIN1
X-Gm-Gg: AYBFou39v0iO0wfLrBb/DiodsC1Ar7Lg7ZCG2fGztP+w3tYpgRlEazlrE6/+RjVoGF4
	1R5VKfglZgk+jJ7ECcl4RU3dPnW0tuYdWMC7GJsIKW8BzBXPITzEoUWJWL2XURTArTB0XxmmzmV
	EfaIKJ/R/Qwj0k/kCBNTLJK4CxLPAxPPCBK0PRv+C/sthtIyhijW1WrjJ3QwHwoWk/y4FmiNa2c
	U5Es79u8geo23GZ4caJ8Ed3eVZVTbFSUgW5050rZk+ia9GfK6wMnchI59mUcBCTfvjjxwSIwzA9
	/ks7ha7+4ccevWO4vPjQ7vE8i62KvuOMeZ0d6p/LxmXsbd7Fs4e81rtOYL0QdJD5l3goYpbilmI
	C+uBS7ezI1HeBhLR81HFtGI2s57/MZ70iZVMvOSJhXineDzqUfctgQqNiNv12xABDVdrcPD4WEZ
	YjAw==
X-Received: by 2002:a05:620a:3181:b0:944:907:8f64 with SMTP id af79cd13be357-9442174703bmr2045666885a.67.1793702161474;
        Tue, 03 Nov 2026 02:36:01 -0800 (PST)
X-Received: by 2002:a05:620a:3181:b0:944:907:8f64 with SMTP id af79cd13be357-9442174703bmr2045664385a.67.1793702161005;
        Tue, 03 Nov 2026 02:36:01 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a80e0fe6sm55210015e9.1.2026.11.03.02.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 02:36:00 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v18 0/2] phy: qcom: add the SGMII SerDes PHY for
 firmware-managed systems
Date: Tue, 03 Nov 2026 11:35:51 +0100
Message-Id: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAe56WoC/23OwQ6CMAwG4FchOzuyDjc2T76H8dDg5pYIww2Jh
 PDuDmLiQS5N/qb92pkkE71J5FTMJJrRJx+6HEAdCtI47O6G+ltuEM64BMY4Tai4ED01g6O9m6h
 EJrW2WmGNJG/10Vj/3sjLNWfn0xDitF0YQa7tLwbHPywPUEZlBcxiI7hR4hxSKp8vfDShbctcy
 IqOUP8g2PkqD2QIESpluQaObAdaluUDBon6QgEBAAA=
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
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=5985;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=OSH/nSegAY4/sUehIxakgb1AuxxbhMkC5070iHnGOGQ=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq6bkO/tSQu31z/oZTDK3/mEWEb8wNRfecbFn9R
 Do3qyMqmkOJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaum5DgAKCRAFnS7L/zaE
 w4MvEACb8Fq90GKKmgqJLWoeI59fXDlpFqVmQWUxutTSnpvWY1QWhJc2cyXGuU+Kv+PizTVr4Ot
 h1RRFaSzPVAUK1N2xcLAUIm5yYBQ5fr3GFNAmUfjK+8A/gGKl/GH0cejAMmyDVWxV8LG58xTm5N
 6D60t6LSnC4DMZgBGlxT+k0vl+RUfYcA9DjUY2UdMwvMvF8DseO+HxRHCOW909Dt+tlNdkAfl0W
 rwvIFqDK+mPmi1E1TzQj5NTKqsbPqQDQlOk+rb/oaDV8fyvBF/OVxi9bKKosx2NPEwT3zNdZchw
 yS4cb6hoeLBgg0ba1TsAzTmzu/SbQ6rYYH2vHBfXOTLTXwstwpk9qBud3k41+QdYCcAFeR2+u63
 SrDco4OC/mWZbqZnaaa4XvK4wvW4xbFykmWLTjZ9YdJSyx6YO5kqG22nQ/KaUsi4omBXDN8ZjyQ
 bF/n8AWZKscJAHs6eVRHrxz9rJ0mvManvzVgiYm5WnswFKhERvpukybGstnST8YIuTR0VdqrLTQ
 LYQ9uwoZzw5x5E5e11II3F0Q20CDAQYW3nYXCcs2i5k/DPr+YzaedulZdlGwXS4cRPx9dNxDjjR
 sTSBElDF/pVa5wJFr5OoMnXE8YG0QhkHQkDge6ucrp1rzdB7brw41pxQJyweKqAXrcZo/+cszGS
 weuxSC9A+0HWwyQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: gXCH_nCXYPYsROwvhKvrW_j3gLmWV5jX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA0MiBTYWx0ZWRfX+oZiOsGAR1rv
 BZWpc0/U5G5NSrXW8t31yZMt5Ai3lk8gxzmqqD8S7ulDdOhtpL6H/Z24E/KT81cA12y2EO5lJvE
 JfC9QfstCtyhmY/Dg3ORXnM9PseBY7XxxMgyFMzoTFecZBawHRUaRq11imjz2Kcq1bEzG54rPnk
 Pn4IHNXh+AR+y9tOaL39qfY78+3S5YUwiqG9Ze75KI690RnIILPS/X53TUmiI1YKJGSCY0x8WyZ
 BeBN8xPQZnVfQBPNd07PEB9qu6cvhuEQmTKW2Q/USaBPgxCj7WgjVtYy2hkYj2t/lK9S+I1v0aJ
 +l+FycsfFO4T/df10fMFY+s4SKOaDq8H/hZEIuh0cpbzOJtcXyxi2udefcWqRgcX7ujs7KyWHl2
 qTaBeEQgYWBw9xey5vhDVRUvm3Y/V3xXaQZ6yhsyIVgPujrZ05hyqLIgaXrkbx6DqqWl1hjMXa8
 pJ0aIdQKUockOTyG8eQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA0MiBTYWx0ZWRfX9eGiAAVDRpo2
 YQgeuXgmXvPqycQBYU1uIbuR2Auwz4M2OBJ8Ya4IaToNznDPYGlhWr9LIiDHHXnnuciEMAV4kEh
 UqOz1Tbet2kXQZlQK5pgufogISDaHOM=
X-Proofpoint-GUID: gXCH_nCXYPYsROwvhKvrW_j3gLmWV5jX
X-Authority-Analysis: v=2.4 cv=NZlzRGD4 c=1 sm=1 tr=0 ts=6ae9b912 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=PHq6YzTAAAAA:8
 a=h8s98YD0dNPsP74th3cA:9 a=ETV7lutk0qaDVqJI:21 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_02,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_023604_010986_42B0CCD1 
X-CRM114-Status: GOOD (  22.60  )
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

Vinod: Sorry for the noise but sashiko pointed out I forgot about one
comment from Krzysztof. This still should be good to go, there were no
more sashiko comments and this is just a rebase + a commit message tweak.

Add support for the firmware-managed variant of the Serdes PHY present
on the Qualcomm sa8255p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes in v18:
- Drop power-domain-names (Krzysztof)
- Link to v17: https://patch.msgid.link/20261102-sa8255p-eth-phy-v17-0-aa138f2912a0@oss.qualcomm.com

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

 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml |  45 ++++++++
 drivers/phy/qualcomm/Kconfig                       |  11 ++
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c     | 113 +++++++++++++++++++++
 4 files changed, 170 insertions(+)
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
