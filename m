Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1C2AC88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FY/e+Z+mwPsOMJJbEU9Mgb9wZX54BbLkNUz+6l9IhRE=; b=oGGy6itcLT/Ghk
	XGcjg3GccXa/mwng7Q5t0LCpVxO4sa6IL+0KKpIszL2sAFbTLv6te4Y9ZI5Ytb94pelJrgSk7pJ13
	8yISvCIXuY8TJfYLQ5NB5RzWPGmMxhGK37KMkT32X5UuQBESMXa6f3o86N0IslYL/jf4jLpON3WCT
	YeJULc1IZpborNlxAZyPBQw/rq3LYsJH0JfmBHt3HA2tMyg/z31MczNuOeLf9+TJmdRsWwu4SuV+f
	T/18tVReB4cBuPNVfM2HnCsHCIYi+qJIFFOj7dYEFS7nZdzVri0Tt9YHZcNpG0TvzGDdnvgsbYTJN
	DsaKroyoYKHyuEvLayFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7P-00000005rJX-21a8;
	Tue, 15 Sep 2026 10:10:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7K-00000005rGd-3a1P
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=RVjnGkChUmA4edEyhTP5KPm4Mw6riega2tgDME5R+LY=; b=fHGXUkJh/o34Hm6gItbBxPULFA
	V/1/IZnz3qIZqy9Yqs/iqHlfNeAtGDcM7uwluptkQR3iaJ9Xnb9Ik2Y2P7vMfe/g014imTR0VdZS9
	rqNsH4QZKJV1zEvhPvtkb9Yt8USg6Onu7MVIe/LnFVwHtYmInfWrWvXwzaYeN6y+2M8XlpLkzAVgU
	RW6XmGjeTz4ynVBPl3rOcHNkwzmhGt+4jTSf9fpdUsT3l75EdEt5DSIoKkQUmYSwc1KQfDw5tnzY0
	XsRLAPLOXvKJxgYwCotGG5x7GgvAA510lNZ11w3w79YDbsCiwA+h+D6DlkYyr0FxwwXU1tv7o7myZ
	uvtqqtVQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6Q7H-00000006X5P-1LMy
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:10:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9h1Bx3415659
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RVjnGkChUmA4edEyhTP5KPm4Mw6riega2tgDME5R+LY=; b=dQAi8gZQcI3NN8Nl
	bkmmhLpBznOLDX4qKgoCLxdb2bqZNo6PB12K5QCfDQ1dT0OykT/MEa1fKXHejMGk
	kQ8s4s8OuoaHhCWtdJrZJqgg191R+xYRb2lX1fJANDmErOJDypSoN7sVffoPMPW+
	vVUbhNj5eNCYoaoYJVZHQIqHOzsT7lJfodHbJAY+RyWTvBoLssJjDKkkcPeAkRcZ
	/zUlDVJytK5NYkGKnkcTjFX5Cv5Ay9rVbtp0Smv2jID5uIopM996lEWsQC7CJBKw
	5dEemK5FPYiFG9MPzep0VE25Y124TM07xraKuxxRHW5kzL6lozu1FJo80Bhrgeqq
	J8+IfA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gq3hc05tc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:14 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-86b3c58d686so8859075b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789467014; x=1790071814; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RVjnGkChUmA4edEyhTP5KPm4Mw6riega2tgDME5R+LY=;
        b=OwktxwBz5PXpmOA3di2cpkMIr1cYq+w+YCxP4JL2FuI+ImlPVPJ7MnaUB/3XwL4KlP
         L60gZDkYK5VDmda9o4WIS75Z4I4JVTz8mvSpdIKyaIGnEFATEerKfv/ujsKCC8+PP5/j
         fkSADj2yvw975m1Qrtg2f4YpxfkNFCOxsC/dR+ywzJiLcSdmDJMYRhFlyjrHReayPGJD
         37TV/dXp6x5UKKmhW4lOZk7N3OJlOBB6eK4GMngPsrRi12pgo273AZ3Ry/QOID3TGAnX
         B92snmYe9J477/Jo82k2ITs86uv+4mQxSnrLvWf4rwpark0a7okyUlFebW8ptZWk3YzE
         0BuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467014; x=1790071814;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RVjnGkChUmA4edEyhTP5KPm4Mw6riega2tgDME5R+LY=;
        b=kdxP1K+DfjOTB5Sljt+kaECxqcwJzC8h+b0RWDsyw0HqadQY/weZNqBhXwiXDPfvKG
         NuLNBAQmSc9+uIKlp+zpuoXooaEuuCj2xHQJ4jK3XhmoybE/mubaZVFG02/DpiuWQAsG
         DY+vyVQWljZ0+CHyYeU6laoc6a81aJ7Crr3fRNOrGobQ0GQxjCEEWP4mbaGySb2L8zvb
         Lj8GfRfSLAgqJo5WdiEO9NivH73amj8yjR4G2SnlY5aess4I1G563OcU37bBtbmS3UdA
         wxhbRr9zhTn95R6YGTsguSTqXhP28NYokv9gGk/ab+zv/Ybomw/ynnQS/ppMV8SMU2Oa
         ElXQ==
X-Gm-Message-State: AFuF++kABm+b2siv5y5q9z2asgP7xMQ4EKwJihDQKFdFM7hqt4ZeW5a/
	vpqhQJ2Rp5P3qkr3OsUUWzPLtk/t+qWCNg1lQReSGXaUFwKiBZydSx8DG7g9LENo6VicaoY2+Oy
	LhtAcQGtjnrsPUphnXrzTayOTf1O69EPEQkWA42+Gvm2+7r6+lSIts/EH7IUMrdIojga7
X-Gm-Gg: AYBFou0zgFoc7hg+NaB7W/F7HD9je4vrIq61aOcRLg25hb2EcY72PC3E+sKufd8LBR9
	E/Kt9WymloiHmO5OFBDPD3OHi/9rOt7ds66PhYKzqjPXKZIaz57WFg7tGOM/9/HeTclH1uWvPDV
	Bub5E2wpfmpQz3oiEBaUcH14ImgdluZV89iL3PtLb65aMLCCerewIGNPOi4L5Pcyw4mR+idViHN
	7x/mVPjpbru7ouySvBvtwV+g7o+G6lDLGOnU2Zl/urjSm97qpfeyx/XL0IDDFpeZQw8MWnAvUTY
	z8EaGsTQtV6bhgKJRu4nTECwbxiP234dV3J6BY2c7y1SaPWAQa9dvyEs0aRqQ6QawpQg7NMzcvU
	cd/mRarojAXmVIRofcOUzRzgEgKxUPg56wAFAUVN6FFAo0h8MqlMBmtb/oX77vK3SdRiemez9SQ
	7tfJdlBmOMCns=
X-Received: by 2002:a05:6a20:3d07:b0:3d0:7a2e:f827 with SMTP id adf61e73a8af0-3dd529a4cf1mr1047876637.16.1789467014075;
        Tue, 15 Sep 2026 03:10:14 -0700 (PDT)
X-Received: by 2002:a05:6a20:3d07:b0:3d0:7a2e:f827 with SMTP id adf61e73a8af0-3dd529a4cf1mr1047809637.16.1789467013661;
        Tue, 15 Sep 2026 03:10:13 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm14244091c88.6.2026.09.15.03.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:10:13 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 03:09:56 -0700
Subject: [PATCH v16 01/11] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
MIME-Version: 1.0
Message-Id: <20260915-kaanapali-camss-v16-1-c9f3f6f4180c@oss.qualcomm.com>
References: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
In-Reply-To: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: _6Qaza4NBrmy9hfP5sbUDfktOWVgFNvt
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX/WcIU6A3K1hW
 WSVCxSQUarO0jV1NVQnmjcFdqxpe4tFI6K5UtUF7ul7VMfoM1xAxT9Og04aa4TeESaOgh7Gu2h1
 H62l9YE+kQN7X8s6e21lYR8typSknmw=
X-Authority-Analysis: v=2.4 cv=dcUVTnXe c=1 sm=1 tr=0 ts=6aa91986 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=8sc_bQFcTW-iTt5i-CEA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX7jARW1whMCpF
 YIbgmCwUYSiH1f6P1cO05XJjAdop1DEYHRULYPkhFWuWw3DKQdMJOn5fS8KhCaTYRKIoYI8m2HZ
 Ifd/HNxwSQ0UKuF5/klRyonIyl2mPMTFtFcL4ctgJQgqh+b9+GCxQ7Sd81cEZeOi4pbLI7RVPz2
 2AWz9nLLoRdZb+GBKJzNAazI+j/qbcGDI/gwNBV7J5mlC3s5yy7O/H1ydyd4p2TlwkFLpC3hOJo
 uXOgLJrl3BDOvlOpSoQNp3FU4k9cmiIcq9GWyKl8hRlCsXuLp4bxdWNLcNJI61Lx1AugOgykubc
 BLm8I9Y0Sp6nnOGhtDWjgCE+iNI+9vq18c2sOva/voD8KupjC7WBn5IROiuRS0eMIhDijz0fqvL
 /Z6ciUcCiurZXTXjHE1L9X3CAqSgeAe2KXj8Mhbb8Eg7Cli2cFah7lAR/KI7f7KH0wQICKPR9Zf
 b2nNIv+Fg9ZLv9bvXAg==
X-Proofpoint-GUID: _6Qaza4NBrmy9hfP5sbUDfktOWVgFNvt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 phishscore=0
 suspectscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_111019_821377_1B79C254 
X-CRM114-Status: GOOD (  12.08  )
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

The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 993271c42fa0..fa56a375e752 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -16,7 +16,9 @@ description:
 
 properties:
   compatible:
-    const: qcom,x1e80100-csi2-phy
+    enum:
+      - qcom,kaanapali-csi2-phy
+      - qcom,x1e80100-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
