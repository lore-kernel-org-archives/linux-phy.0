Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31679C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 09:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uQrvadnUr4kbcZlPXjNEdGsUG9P1uJS3I+xKdPlnFDs=; b=s1/QAD+0sB6MB3
	DVB4iemSFjVC+NwniV8oB7y8lIdfV8ZJ/BMw36qQF+3zNDpPJoXert/x65Wnwy12ednWCxG3obYHP
	d6XCYL4gyKCNhqCAIAkpPKz3TG5L6Jm7fz0jr39ImITqCNRyxuvz+naxVJq1FiFBQdBmmfsTUCzdZ
	serGBab61dQfQ31bXAil1jW5z8vpd6OtDkIBIsK2IykkQ3vgTL/ozfKoAaSUmNVUWKtkctf6ouxFA
	Gw+HVaRcUPtYkzFJIa/P3Dr9OiS1E0Q3gWGSxDxq9Pa+g+zXyDv552UTzWBDGwdQrgn2x6dBUN3Rp
	y20EGn2A+v3Vxi1zIjPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x78bN-0000000B1fe-2krL;
	Thu, 17 Sep 2026 09:40:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x78bL-0000000B1f5-34Aw
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 09:40:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H9ZmL1746790
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 09:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=HviKUstLs7dMID5WQ7sady
	Dcy4A8d3RlgNXEaO6wr0Y=; b=khcg2Iwya9HCt1EXGRg45vXa/GrAa6s1hiIwyR
	YLBAji7J2k9JPlt8Su4pQ2gwkfBraaV8euGAeTI2A4kUXXiOZcZGyeQukwvbkG9g
	mkUlfzygj4ND5kAmr5yHKpfTOm4YCjSdPzbBrXzvwZbCRqRy2B3TitMRcdy5h6+n
	rmHyu5leQ+S5SMsHPfpPYaFDNEpfUOpiGo4mkEaXLSCyJC2W+Ca1AlKOSXESmZs0
	fXdFVvS5LfNni1W9Az5k8+wewtCjO72ZawBCDsEo7JZNFRasuZvNjkLD94t1Rbe5
	KK+FdU0aI8JQ1Okj/BdUn2IpYyij4/8nb+BmHqc7FoZFo8vg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grcra892y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 09:40:18 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38dbf293831so1395100a91.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 02:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789638018; x=1790242818; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=HviKUstLs7dMID5WQ7sadyDcy4A8d3RlgNXEaO6wr0Y=;
        b=WRbotW2+FVf3CE4KWC0cfQSYSuxjPAQxMNukVeVrB59z4jA/PdiMfMpS5KtRD+RMxG
         QTgUefHbOVPRXlDzCzvjDh4kWNkCnxVzaUIp3pJQdjwSE+209XzaZRarIUxlqABozPG6
         yG9y5djFWzCBne6AmiraaA9fqDLCfjfQrUqZLZXt1xi4X08y6xafSPwmw+f7TfXdvZp5
         QjcWlIVWS9aXQ/sJCy0WAjTVbDXEcpUK7mh1hGQ+EVeddxnzgWejpC2XXc6cQUW6v33P
         GCxJN7hVty+LmdOCq0maekRquPLigbkJSPZ10GnYTxv117jveQLPcX8hPU5QUYdat7rS
         Il6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789638018; x=1790242818;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=HviKUstLs7dMID5WQ7sadyDcy4A8d3RlgNXEaO6wr0Y=;
        b=GdYV8VpT2z9LgzEcxeeo5kngpU5ahmZ1EUu35UPNUxCMqkJAUcHsm6ReAZz+Aoa7M9
         8HccDihW0+AN+vmV6yIUyFfkZUgaYiWwFrC+kXsmv9XoUPep/X0k6lkPw4vzTiJPTYF4
         REOuzARLnjPs2cgxyuB6KnFigNA8TELfdHhZSeCr/VaLGcqxbHeLL0H6scYb7ERZQj18
         zWcH438zr+hUVLCLopnPqoqnrG9QuXZ4v573zGMhl3C2e7ob2Axk6aClj9nifz6bcOv5
         sVKn8adlYioPsUn35lZHGAE7hLH+dPWD5r3nbRr32TZm2NZ5Tivtf3d8xHbBdeaa+ueD
         ZZzw==
X-Forwarded-Encrypted: i=1; AKwUvBxUbByW34CSkiIkEfl8enyVtxOVr27ijHZ4ILN8vvbVBYi0Wd3h0pmV2pY50vKFjMf9qP2/8icrTUU=@lists.infradead.org
X-Gm-Message-State: AFuF++lWLGExnjJzPllSM7gTjK2YpIaLa8Mjphlx6zs/VTmqCjTdayCa
	WpyK/U8gAZdH8xSbKcrxipYKrf+5mfstDwR6btgjirOyLhm3Z4h9xNBCr1L986bTekV38xLjiF5
	oGolXzxvBUqrJwgCyuOeODCUXJ1gwQt95ZNVuYrfBaxlmYCSXm959Cc333E3bUcBFhjOT
X-Gm-Gg: AYBFou1pFnt1WSn77udSiSdByQbxeYmDqkNpPHYwmhgKtRUC2a0L0/k6SQoIeP3xn1q
	2wQmsQ0rdXg+PxzFDs8Kl3F8CXd0ebe2kAVDoGpPNi8vDnmiHMpV6HS1fLm5ZCalN9XhmLiqatS
	h69CzTEiXC7y8yrXxNTwxBhTj+FDyiO4KNNaQb3segZwexfeOtrEzaS1UfC3ytEuXxIpSU+3Z03
	wrBrU5IGsjI/garnwEymJUYWl4bcuSIlD2Y6k0Z8nB3mHqPyyGysgdvIUm9D5fiziqhY3avhZDg
	Z/u934UvF2PzJjXlRyjukxc8NgWfnTaKEzpgES//IMna0Fkk7IhsQfNtSlV+/epfwjbxzRLDmdW
	bC6FrU6F/jHn/v66Uci6oPQ+yD8tLueldsRNdoIfL3CKeJjonhPTDPQNHA5v1adtrbjBfrw==
X-Received: by 2002:a17:90b:5803:b0:39e:1329:7816 with SMTP id 98e67ed59e1d1-39e1e484be6mr13489134a91.15.1789638017604;
        Thu, 17 Sep 2026 02:40:17 -0700 (PDT)
X-Received: by 2002:a17:90b:5803:b0:39e:1329:7816 with SMTP id 98e67ed59e1d1-39e1e484be6mr13489028a91.15.1789638017152;
        Thu, 17 Sep 2026 02:40:17 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bf5ac47cfsm13161400eec.17.2026.09.17.02.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 02:40:16 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 15:10:09 +0530
Subject: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
MIME-Version: 1.0
Message-Id: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAHi1q2oC/yXM2wrCMBCE4Vcpe22gCaLUVxEvNs1U10MbNq0tl
 L67q94MfDD8KxWooNCpWknxliJDb/C7itob91c4SWYKdTjUjT+68opOkcEj1OVhtn2CH2xPeO5
 CSvvIoSELZEUnyy9+vvxdpnhHO36LtG0fbE4b334AAAA=
X-Change-ID: 20260917-smb-repeater-power-leakage-e1af2dd4ba29
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789638013; l=1389;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=cBSNXOMGIDt/T+TMgdLf64Xou4UhaPFxYSV6wdg2sso=;
 b=7VYnGzUyDOG7tGq9tACsn9MIxurQJ/BNeRW84gsnF0IISn3t852Jsme2eiMyFczHtNKEu8TQe
 sj3+WFiwWbIA5gwEhfwkF/GhZWXSkY05MiurSNd/JOIO8g5a/ojvhka
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDEzMSBTYWx0ZWRfX8t5LhMVM02qY
 jhdfVb01Sn6qtRc5L6GE3dYBCjI4FMW+8z5ilBS7OOMcwOLzsQACV0KkLWlr9eV2qlJpE/gtD0b
 pnp+e7t0B1TuQQfjx8MLd0191pTieDA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDEzMSBTYWx0ZWRfX9cvXmZn4G42v
 P4G12txGKViY+tNQ4NL+YVyOIR7uh7Q3YarE2M8DmAlMK650EpP4N8Sxt95bufbMAw9t6H/K8Pq
 LL7WQrbgdIbwPCWftUE71i9sy9wILBqzgPBJkrRgJMOvEeovqavOjE9F6ffrkwO7qG4NM/Kx/D3
 YCy5LImZRmZaGO7W00Bg7rPAmPXaMp3v5HewjrAUIsqhnzWQsOk+olUnT9v4i0l0Psp9uPAC02C
 H4wuCQkKA674SC4H6LhzFj4O2H9gZxG8YkXLIQMIar6ywdQZptD2Dj/dBDbmMuuxicT/rBU+KOh
 KM4GPHg91jcNvQr4iFXItx+mR9GSgyMl6MIGpI8PCbJJNJ+xmym6aD8UJl54YTMQg9fwVc5KgjD
 SQ+wkZvtf5+GJjhh5hg6DEAz557ficiR/c3T+X/qvZ5NytHXYWh5pw8jstS/gDKax5WMP5ulq8w
 JuAfho0JINmSgRpA3Fw==
X-Authority-Analysis: v=2.4 cv=WL/qzXsR c=1 sm=1 tr=0 ts=6aabb582 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=RyVTb0XvSxcqwvHsJZ4A:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: Stnenb4GvfGZNeuEzc5YvNK2VPA5iv6F
X-Proofpoint-ORIG-GUID: Stnenb4GvfGZNeuEzc5YvNK2VPA5iv6F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 phishscore=0 priorityscore=1501 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609170131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_024019_774722_E9DD9B03 
X-CRM114-Status: GOOD (  10.92  )
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

On Glymur, it is observed that although the exit call is done, there is a
power leakage seen on SMB2370 charger (which embeds the eUSB2 module as
well). As per recommendation of HW team, disable the repeater during the
exit call to prevent this power leakage.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
RB tag from Konrad received on an internal reivew.
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index efeec4709a15..7db2fbff6163 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -229,7 +229,10 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 static int eusb2_repeater_exit(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
+	struct regmap *regmap = rptr->regmap;
+	u32 base = rptr->base;
 
+	regmap_write(regmap, base + EUSB2_EN_CTL1, 0);
 	return regulator_bulk_disable(rptr->cfg->num_vregs, rptr->vregs);
 }
 

---
base-commit: 8bc74189b12e3d094d45eb82946c1fa17569fc93
change-id: 20260917-smb-repeater-power-leakage-e1af2dd4ba29

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
