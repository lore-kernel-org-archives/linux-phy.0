Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC38DCD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dzgsg/ry76aoWMsoTknrxV9KeZbR9yVAfdzZQAC3Cw8=; b=qb+UiVJwRjm6v5
	l7jxJkLZwgl88DzrqQ+OpS7tFlsrUAGYw2buSoIPqDm4VSZGDBZ0vDEhXE3+dgRvyTzDURa24cIvY
	N20LEL2Ib40/gcZJgAxxS7v2vRG3tnhMBN+n1H0UF3cj8SjcWEBPoyy9JWZ5jtqBKEIwGJKPV+w8+
	sPgRVNuvILzwf8aVYBuQccdAOhb74DtvPWf2xUsDDv4hphO45C9QQcFBtqMF+siz04LxWVCc8o7bW
	0g1z6eSxpYGzoqztYInxn064LYQrKeIVpHJxzeWvO08agW6uj1hfzcFZiVMJdW0/m6H3MTMKMmzbQ
	dB070HBtMuzE/8EmoWWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTeo-0000000BYLb-0VaY;
	Fri, 22 May 2026 17:27:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTel-0000000BYL0-3p9T
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 17:27:33 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MGankb1733031
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:27:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=IwddrSzKn3iMA8482Qg57Y1aDHZnVmjtI5X
	veAcu0xk=; b=lWPMRzJKN7HeQN4GQ9Yz/4pz4w969E38tEFl1zP14zflezs9Msm
	4edV9ueXMugDSUCINXZR8HUG6W+E2its8baroXIznW1fJUwoyOvfnC9+/3btywx5
	MvUvzGBoXtkK39klviLdHLYC/DotuLcwXIzFcXLTIrDkKzbuLX8iBAZKCz5dJOg7
	K8EqTw3rf6QSltXkbh4GHu9dKtvb/szRpirAr+y7EAhoDztkf+0XQn/TG6xUalpi
	U6NZA0kWBRvFnLVJET4fpggXX5PjmiuUe59IteBcAQqsiEcuZOM4CuABRzekGhTU
	sfKLGC5fVvQirTMx6fh3Wy7gq6h6hWup1Ww==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eattq874q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:27:30 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8353b042152so9375230b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 10:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779470850; x=1780075650; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IwddrSzKn3iMA8482Qg57Y1aDHZnVmjtI5XveAcu0xk=;
        b=UBJZuEtgH8wQpYP7b9qo3uJGLA7CClFylTZ9nIW+uBYroK2wnbnG2LZVJ7w1+RjTXT
         LXHlQShE1zyHq3d4EZx5cddL5bHXOE7QGg3uhjUqrRpZqALtUyHsEefSezzukQUMBj08
         wOlflStacn+G0QQVgYQKwfZ8Vc67eHTGSkyYtNIt737mpUBoUyKfNTPP0sbAb4NF2kLd
         PVKjyo6+T7UiK5QD6ZHbSDLMzKwRP4jAEIu5xn/Q3DsUEbDT/NSUaRReYtD/kqiqvM5J
         VrXwq9IoIDOi/NISL1LzzGeAn1dQqT+P6UJbJUSUh3rAqkj1jrHVONnB+cLhFmkxG/jz
         /K1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779470850; x=1780075650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IwddrSzKn3iMA8482Qg57Y1aDHZnVmjtI5XveAcu0xk=;
        b=hCknHPACbXbPH/vR6VJjcIGpMdn6abpsz9W7IWJKpyNqO6OtAr9h8szVIuqDfge43X
         AVX1EyfqLArLxYd1KG3NdwXny/rdh3wWdXtpwmR6E8fWgF3mGXorIAQAk5FMgc3NcWow
         U7P/DzixixFoQKFjdvp1sCfyd4C19Lrm6WVpoJDDCDePUg9s2Ym+gl58UNih3QFd8gFD
         ToCw5WfBlAQ5D8DaFoFep788b4ja4mLNND77JR5J996FkkVBj3UsZm09bW/7wT40iY16
         9aHiYREtLAgnVeRgUqjCNf9O/DWUVmHJWkhMLNP3sode0JUuiU8tW1GdfeMS1WueyXj1
         V6Jg==
X-Forwarded-Encrypted: i=1; AFNElJ/B365XdMJrKq8Q9PfcO3yq92O5sBibEHEjt4iHFcScSsIF7PXWVAcTau4F5J9LliQS2LjGvynjQrg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLztltnzeuKIudrOnrw1eYbr0z7nbAU86j04D3MOgqYCQ0+C/h
	c4KUryRJKbc7sYdvejrTR2+LpfmA40daf3aQx2sK9FNRlQdRQhTHMcDdgRMlR2KqLG6c6Re1tJW
	mJgMOxLsPjDe895im35SI36tJ2+oBiTAGX0aOEMWe4VX31Qd1nCpeaak1N/1DPj6muetg
X-Gm-Gg: Acq92OEcvPyW9X7Ghq0wnu7bRsaixd8wDeEX/ZjzPktwMOpvAmBuu7iVTp8X0sL4DYZ
	Y51KpYDYSr0WuxwNmbu5x2p6HDgXaF5pdn/2dZAHxnI5lAM6r2bkTvwSdlYEqsvCmWu7N30HdUK
	Ed4y5l5+rBE8oNnKtKpFyFNjuQU4xiNHVVgEi/ggt30wUbEbqU2mjk66GairpBQuU5Go5i0De4O
	MpHeF0nQFhGE4mJ0YWoZzNhZcDQMMpB1xzbWf8/ZCI93cFmm0rgW5mZbF0an1NoNz/FLu09ATAb
	MpnFa2+ssr7Zt4hvYx9bU8SrCysNkr+7tqEP7HcxModEXASI4MqTnZrfTS+uOyJS0qDHh07PAln
	fiLUkkb6TNQMv4IpF31whR2JOy297Q60g0iNPbXnEdnJOk58/6tAHxg==
X-Received: by 2002:a05:6a00:2a09:b0:83e:c8f8:cec7 with SMTP id d2e1a72fcca58-8415f352254mr4810270b3a.35.1779470850003;
        Fri, 22 May 2026 10:27:30 -0700 (PDT)
X-Received: by 2002:a05:6a00:2a09:b0:83e:c8f8:cec7 with SMTP id d2e1a72fcca58-8415f352254mr4810241b3a.35.1779470849562;
        Fri, 22 May 2026 10:27:29 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164ea09a9sm3045693b3a.31.2026.05.22.10.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 10:27:25 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH V2 0/3] Add Hawi UFS PHY and Controller support
Date: Fri, 22 May 2026 22:57:13 +0530
Message-Id: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE3NCBTYWx0ZWRfXwob5+DGbfQew
 TndV1ReunvP8QZUf88DFoJrvn6Mq+NpCgZAkqNIQWb0dAV8uUx6kGeQNO6yLRIcv4YHjBqyhRKY
 /NjbF0m/5mos0pnK5ngSdO19Nc9SL4NurM6vz3drBXgs5K/n8bXl97w1i1nQVJBJSMgqX4B5gRM
 vzwjKiG9FnNRZntCts37DczpspDRvWJm3v2DOfplMZcRaEa7tmHohRVEaxqG2lyzuknxG0nlzLh
 kmCAzHbWIACBH0fLKebcE5hxzy/uYU5IfwyraZyDdu1IVyZ18bgJu/IMPp10ajA5E1RHLGHTZ7u
 8Tej2UAO7YljR3JlkEv+yiHp82ITtrR0OoA+EsxXatb7w0ZSFsxeoE0gfrGUFdkk6XI0/dduMi3
 idM7Xlibxc3iT4JQ3WdHw69TFD71NpqwR1X448kaCEHrZrgqFiIZ3wMIMqeNEUn5/ganCVPZY+J
 OV4rEGfbmBFGw79SZmg==
X-Proofpoint-GUID: SHgv4bo7c5fWFaoMHK_cGTDW8yEDE3QT
X-Proofpoint-ORIG-GUID: SHgv4bo7c5fWFaoMHK_cGTDW8yEDE3QT
X-Authority-Analysis: v=2.4 cv=S/zpBosP c=1 sm=1 tr=0 ts=6a109203 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=wRtOOnJjwWicnHpPwtUA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_102732_065820_C3ACEBC3 
X-CRM114-Status: GOOD (  10.95  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

This series introduces devicetree binding documentation and PHY
initialization support required to enable UFS on this platform.

  1. Devicetree binding documentation for the QMP UFS PHY
     used on Qualcomm Hawi.
  2. Devicetree binding documentation for the UFS controller
     instance present on the Hawi platform.
  3. Initialization sequence tables and configuration required
     for the QMP UFS PHY on Hawi SoC.

---
changes from V1
1) Addressed Dmitry's comments to fix versioning for PCS and qserdes.
2) Addressed Mani's comments and fixed missed compatible string and
   binding name correction.

Palash Kambar (3):
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY
    compatible
  scsi: ufs: qcom :dt-bindings: Document the Hawi UFS controller
  phy: qcom-qmp-ufs: Add UFS PHY support on Hawi

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   2 +
 .../bindings/ufs/qcom,sm8650-ufshc.yaml       |   2 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
 .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 140 ++++++++++++++++++
 5 files changed, 205 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
