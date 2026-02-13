Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61875EF48DB
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Syx93gE4JPyEdWkuBjbHvwjOfCKngEA1+3OyVd9m+Ec=; b=dHeqaXmaQoJLnJ
	0WdhOonfcoY2LYdWkNKnHKa86kuxMtpWX7FKS7v5Hkj9a4j4wPr3yMS1t81HW3DCKYyh+MFfcoEsk
	ij1YugTDyQC1XHkpyyT50s9x+Jdeb2/qU5PUDHTirROf5sjOLyWTOY4eE+hazhFD3G0oTs1SV66Qf
	WdS9cCjuYGgPXpNg8eXHgb4F0MUr6foYmb5yJJ9RpeCVSFdRL2dNUad/vpsU9B9V1o/QFZcgxpewI
	DL0zHlRt3+sSIuM5mL5Jba6InVC2hXZ9E7xKDFYTjjC6WJB7+5MFQlqslTP87AEIIomfFF/rde7+6
	dGt1OnaCS11QOWwArx4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqnea-000000036Zv-3Nbj;
	Fri, 13 Feb 2026 07:31:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqneY-000000036Za-2phR
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 07:31:52 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CLTNU91642026
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 07:31:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=YWiNt3lTljwCyJwn+r2SC+
	u1cEIq6wj3aixcORgCte0=; b=eCsJ40mglDc9KcSYtFEF8DYVibCDH2dxj8pseH
	XnwS6x9pJkXvTIEzNzGAf+wQoC8KXnTl+Bx6f4GLsi3tvcCZ3IdDdeOPTAqTKhPG
	Kr+nP9MA3wu016S3/KFopK9zR18sVCRqPwatiDSpHJ0g3nXFSTijeUyejVKOr8wu
	O5p1ye9huy+5kwf6fHCSnkQ6NuVujdfX1sZ4+PS335DiAUbYOxCfG8e5PJetaXuk
	zG8rYZ43OWo14mNJ2iLBpyZcXg2qszv/ChJn5anNNgCbLwyUz8NG1Hg+MiZNIXIs
	Vs0ka3xz68S4zCCpywuho0YmPL3sZbaQvpVP14G3O/Ag2BTA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ptv1rsf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 07:31:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8950562d351so57441316d6.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 23:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770967909; x=1771572709; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YWiNt3lTljwCyJwn+r2SC+u1cEIq6wj3aixcORgCte0=;
        b=G2xrsYhHE1eRWMOteIz2D9j50yfu117aRv1N5QuvXQmHiFI+GKtmDSHIA9T7VHlIpC
         70sh5BL3u5mU2Fw87tDXPXMNoifLcHdIuWA+usduGxejto4Sey2ZehYpiKnUtUyDDKmr
         hiVaqF8BN92okIbIdrLA2cPZCDFUO6I5C5U1jBLR28CfkwLj0ahSZCwZNNopfyg/PZqy
         M52ZMBW/RWHDc54Y8YFCLuzqTtTJZLIZmRa8ijtq29Y4R8xaoe9vuMC+rrCJXCDHARYG
         2umxgR+rUrHCwDI9o9FG9wohvWuj1thToCibkP8GJ95JC1qXsy60GsLGKm3RF9YZ/B66
         xlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770967909; x=1771572709;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YWiNt3lTljwCyJwn+r2SC+u1cEIq6wj3aixcORgCte0=;
        b=EOGbJ1rj9yFvH31iDWVCzpCs0USnvVjIVCp6taxBSxeeXGQjr6vfgTmTLZmCBbigTo
         BdYGXCxkp0/njnI82egr5NBqQhN7FCwWcQpRk4uPR6ks+mqt2NCtoQ1xNRyC0hRverGS
         DmJV6MkUiA2etdY+PjKLUdwhU2RC80e3YD2E3PecKM0dTsKC/+UGQmiAWNI0Hw0j1os6
         RH1A9TgoujrLJ5DRNDMU28BgD50hX2+wPLEn4kJZeIXyf6dSqCDYIEMZvpBf+mFCjfs2
         QqQrWzKQ0G2uerMCZhJL513F3bRjQy3NQlMBUprAVCUPR8HsewmEuXfk83mQJN15kljj
         kk+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWw+CCTnubw/SrIfEGWq6qftVRJEM5AH5ijYtg3t/xlxQo04TFoM0lBUySrKN8e4gF6sjc3FN5V4f0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLCN7ZzsikJGEXAXRKO1uSyS/a42iixGDLldHEkGy2RgVDR4dp
	a7S65DVfxuCIJGU6nhDTt9PRiXMlx4yz4nelg/wgZGvg6J2kXBmAGHspJhK9Zu7IRCHHs5Q+BAT
	l6/S/DxueCy+uHRXNrDmqcD9FwnRe/c5pnO6mVJH3Y4Kjbb+9u1wYGUMb37Nm93eW+mnl
X-Gm-Gg: AZuq6aL0uPXBWGjO9X4DrUiZWoalpVqFxSFZFmyOFK65hv85w04idMn3WUnDkjzCdPk
	uhutQ/MM9ePWeLWL/8SstlhvjfiAkJ3yOXzpfcXpgX0cD8BoG0eSpbAXrE5ggCyJ9WlKM+7x7BM
	6iaQD+1armMWVcYrZK2LPUVpjUFOtV43rnDNH6t8P1K/inffxajrbciKFrVYtfj0SH41i2yxMMd
	7GToz4heeN5ud3V+han28I2T4ij1Px9EsciIdvcwsQNjVLzTRsOURKahaGFpL7CON3JNuAq8alQ
	7Sl8A2d2jvjNJKsfzf3n8m3w8VXIyVme2Y/SOk0JezmT5C7ES5jjWD5wn6kouj8QXoAqtvSkA6E
	KmecC+5JoBn0SPp/Ngnuf4C3vqUSTkmRqTNs2J2Ix4Bp7J+/tXaUdKuh/SuGQx2pt8KZrmzGI3U
	xTKlwUULA=
X-Received: by 2002:a05:6214:c28:b0:895:4852:ef4c with SMTP id 6a1803df08f44-897360d0142mr13356646d6.23.1770967909111;
        Thu, 12 Feb 2026 23:31:49 -0800 (PST)
X-Received: by 2002:a05:6214:c28:b0:895:4852:ef4c with SMTP id 6a1803df08f44-897360d0142mr13356346d6.23.1770967908679;
        Thu, 12 Feb 2026 23:31:48 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b0bda6fsm541156485a.9.2026.02.12.23.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:31:48 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v2 0/2] phy: qcom: edp: Add DP/eDP switch for phys
Date: Fri, 13 Feb 2026 15:31:41 +0800
Message-Id: <20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF3TjmkC/2WOQQrCMBBFr1JmbWSSNNW68h5SJJ1MbEBtTWqxS
 O9urEs3H95nePPfkDgGTnAo3hB5Cin09wxqUwB19n5hEVxmUKgqVGgEu+E8dLOQTFazw11JCPl
 6iOzDazWdmh9HfjyzcPyV0NrEgvrbLYyHwlPJtaRK14TW19pVmrQzLSFzaYw0zu0Mlha+ri6ks
 Y/zOnKSq+xvzyQFCqXlfq/a1msvj31K28fTXr8vtzmgWZblAz44qj7xAAAA
X-Change-ID: 20260205-edp_phy-1eca3ed074c0
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770967906; l=1469;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=Ee1Nf/av7WA7+/1fwJdgqUPEf25bQzrdCmpSHIu/KX4=;
 b=Q4lMX6lMSQWQ96OG/ex284RSApliZ1e6b4i6Q+6+OsMsZ+TFmkj0JPXzDHTwwl5rKIo8Ixlzs
 K8nx8mIlsdvBJ2Vu351GG5xeHboHkQLfqEdll1hNwUNefatXjWJq8k2
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-GUID: Fp660xWCWNimyiXmW1YxtWhmXLGw3ZjR
X-Authority-Analysis: v=2.4 cv=eaowvrEH c=1 sm=1 tr=0 ts=698ed366 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M-2OMZX0rM6BGFiE4MwA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA1NyBTYWx0ZWRfX3Aqhsc4klHLv
 wLKG7nadxut13lMrPhSS+xVdbZmY+tVL9RNDXcMS7Uz1N+I54lOKt72cW2l5PVXSAl1SRXcom8r
 IthZhBZB/vyfTAbRc0X4ic+gj45+UOWtCMbY83t3SgVSttI95OXtvNoS6jKaEWzIQYQInPWtB7Z
 cvQ4wsx7E+baWKkmB6IlAEJ8ui3bGvaZxoZCZ83+h+2HvWM3KCGKFop7IxHyxCIBQ1NyiXsgZei
 QpKCgPzA4OBFGxTgTNJneaaI7IOuREsovq5e1XGLI/ZSSQXxtGDG+8sO7QI5JxGVs4SiQx5riVk
 ew/WaKbUWwiDZZlZ8A1QbaP3tgm60zwhP3Eq26erN8eB99sT+BOEt4SlLTbifseDrzwbbOP7o2N
 a8gYvC12nK1TChCCgeiITpQ9QLPETlNmbKdmjtSZE2puQ0bXqHzJtb4zj9Zgkqm4GsR9eB4T2ev
 kdGGJk4Q5/aV/jRQJYw==
X-Proofpoint-ORIG-GUID: Fp660xWCWNimyiXmW1YxtWhmXLGw3ZjR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_233150_730827_C81BCE57 
X-CRM114-Status: GOOD (  11.11  )
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

Currently the PHY selects the DP/eDP configuration tables in a fixed way,
choosing the table when enable. This driver has known issues:
1. The selected table does not match the actual platform mode.
2. It cannot support both modes at the same time.

As discussed here[1], this series:
1. Cleans up duplicated and incorrect tables based on the HPG.
2. Fixes the LDO programming error in eDP mode.
3. Adds DP/eDP mode switching support.

Note: x1e80100/sa8775p/sc7280 have been tested, while glymur/sc8280xp
have not been tested.

[1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
Changes in v2:
- Combine the third patch with the first one.[Dmitry]
- Fix code formatting issues.[Konrad][Dmitry]
- Update the commit message description.[Dmitry][Konrad]
- Fix kodiak swing/pre_emp table values.[Konrad]
- Link to v1: https://lore.kernel.org/r/20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com

---
Yongxing Mou (2):
      phy: qcom: edp: Add eDP/DP mode switch support
      phy: qcom: edp: Add per-version LDO configuration callback

 drivers/phy/qualcomm/phy-qcom-edp.c | 176 ++++++++++++++++++++++++++----------
 1 file changed, 129 insertions(+), 47 deletions(-)
---
base-commit: fc4e91c639c0af93d63c3d5bc0ee45515dd7504a
change-id: 20260205-edp_phy-1eca3ed074c0

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
