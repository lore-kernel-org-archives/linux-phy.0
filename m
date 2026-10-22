Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B95606A328
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 10:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=q0DHF8Gm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=T+fQu8Sh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HU+zaH9c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=it97h1GGqNtF+0j9offQ3R4nMDLSYvCtliSXWU3AByU=; b=q0DHF8GmkebAZDnt0LXYV6zOLG
	GK0DXvWY8fm1Ikvz98BMLBxAq6kXe9VdSIcT5m6Iu69kYXu1Hccxtg1Z8niz+o+jp7aJ1vocGLrXC
	JvW6rsPNSePa+QY3VVydIQrXIScYlAx8eIAg/P3h6uINJsEeDO8K9ul5M82UGDB7v4vQssPsgRMXh
	3f0jnqXe0jg5UnhPXRpAWBkwViuOkPID6WkOzx886MxUdWA1cWHuvi03pyVRE/0lqwYmD7Fe3jyQ9
	AaPI7UQDXoIiS1eeRh6kkxQiSslSQYz2kD3bnmzwpW9bfAshSDjkEWtqIYnsrvkElNXhjHzLyLB1d
	y6jCER9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqGl-0000000DxAk-1UpM;
	Thu, 22 Oct 2026 10:43:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqGj-0000000Dx9v-2gsC
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 10:43:34 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MA09ln3427555
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Ov8/SovJGBx
	Yq4ezwQthf2+dF/XG7/tdwQVejwizs6g=; b=T+fQu8ShwHVqoR+D3z8X0345Xv+
	XtlYNMbOPHN5cZmSKSWPwTEDIb+il7x8/uCLzNJA8vI6/hK1/LlbwOFSAfbAWws1
	4QznWixoglmFrIktOwNXUteYKSoMnO0KoadMI00y6vW/ISEfFpVyez5UwqcvqZUA
	37/NtlaDO5amUN40mw8I/4o8xR5yHvI2JYLIaroNCvD8fqfoRno+5EasYcHsr5iX
	fI09mdIvC9dJ1+GX/Eb9Bw9aYMAfP/wNoVtyvhcm7gsl2hbtN2/rayjYn9qlKp1U
	nqsVC7opNIDpSUkvdw7k4tvKBK+qbosHbCb6KxefUGo9G2ppMLiqvd+482A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93at5n8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:43:32 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2e9d52f684fso16543295ad.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 03:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792665812; x=1793270612; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ov8/SovJGBxYq4ezwQthf2+dF/XG7/tdwQVejwizs6g=;
        b=HU+zaH9cKdw/wGUUDuxkBHqHw953RGfeHXfLw2VUw0iCrp+S9XrvKH8ZZh1UrYt2Nk
         SiS1j251WqYqDztAmDcqR4X2XhybyCaeOSe21BtdUSQ6CHvV2iB+i9rZLZTpmJqCIPNy
         Gwub+RotD7vMtnQrzZJRjO+LbUlZAa5wkn2fLW10ONF7XCHUBXO0eUDYZ9AUlOgha01z
         0iQxz12Gbf5YT6kjHbuaHbhLVSSLE93Joz5HEGrN1W+T1/sdBp8e3sHOEbzLE2SMiOjf
         mjPsPep90k3Nbsd7woyBv2VVXM4H3bRMvrCwKAPjt2HCzNpLPewclKBXOnRcIyLwGqkt
         ehJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792665812; x=1793270612;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ov8/SovJGBxYq4ezwQthf2+dF/XG7/tdwQVejwizs6g=;
        b=io4WknVUXoKg2zhasJL25LZyxpfm1lw7C1apkHCYwDkzQvCYbMwDVH4hqByT09/ovy
         Sen6TC7A+mlZXh5gRNXUS3dxm261v2fiVCjci06jol1EjZET8UxfBk7je0rqLFGbip/0
         lQhElisJsLjrlqLpA+a3xDRwMB/RfYS+VCfjX8F4DGM65yMokhFQJAsv5MxemLeZIJM8
         Jyfp/uz1FwrjvaidZJ21h0UV5c2om+YYZtaSJ4cngupZCrZMPUikOD/ra+3hzoW7U8Nx
         UmRlI3151UOE/jaRrDHKlalHQ4lXB7mOkXdtI73zn2mTpHFy+lUgTkRvj+1eMLvS/VVt
         C8PA==
X-Forwarded-Encrypted: i=1; AKwUvBzrcV07vvYE2zYd4hOu4DYQmTOm/chrTicUNkuAXdilpNQgmq5auyJyXuY9TY7HNYQt7N3ForeO4hE=@lists.infradead.org
X-Gm-Message-State: AFq9FYJiTBugjWM4WhmAJyMaDdjGW3MrJsm55HqwqGYd8VxXulR9u9ns
	zKVwe4OpWSDVnMbee9Fsc+Loah5WoX/QKtLD2/1JraFY0H1dwNHttKJSN0TlUudBpwImmeXDMid
	TEQLiA3862bImTmM8C+ADhUaHR6Xmc0H3HcV8veyrHfqFGL7vfeAAz9RBZZ08cBd225zv
X-Gm-Gg: AYBFou0X04v95Y6b3xwZW9yRQ7JQM8tqiH5DaWD++bDGjY7nbF43j8qBGnrFC6/L4rx
	EDWPpj7AtsNzrpQnhMyRCTCaxvA0JGcPc8IQwR9eADpyN2BpvchCCyyryCycSvKEYdGnA69xttA
	rYOEN6CC0cKz+u6QN1u8xmmDI+Q+TV59NZRn13O8RPFp2S5oaaBO+igxMxWsSAXjK/Ovxsmd4eE
	NyN6PnwQkitZwUCvKW1yJluORcs/Pw7mRiY4vZOnJQz0l8G4d55ED+9NkXRvpEOREu/K2AIUs1s
	d3FQXJ2dcrUnJ/x2SDBYioDU8I5KlaKc49uN8w4xRQZnhcjJa42YB8k5o1d43a2/rqNLXfmhou4
	4LtyuMOhEEFKwPvrS9KvUCD8EUmx1
X-Received: by 2002:a17:902:d4c5:b0:2e8:31ef:d24 with SMTP id d9443c01a7336-2ea43e0abe1mr36051425ad.38.1792665811658;
        Thu, 22 Oct 2026 03:43:31 -0700 (PDT)
X-Received: by 2002:a17:902:d4c5:b0:2e8:31ef:d24 with SMTP id d9443c01a7336-2ea43e0abe1mr36051325ad.38.1792665811201;
        Thu, 22 Oct 2026 03:43:31 -0700 (PDT)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b43b53dsm22327565ad.39.2026.10.22.03.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 03:43:30 -0700 (PDT)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH v1 1/2] phy: qcom: qmp-combo: Add PM suspend/resume callbacks
Date: Thu, 22 Oct 2026 16:13:20 +0530
Message-Id: <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX+rIL8telHcYB
 4A+DEJy4rPhnHfnxnnmi59fZNVQfubcsPSr7ZmNKHv+fXEGo1x3g9QB69VPbI70ZLdEo0l7RLt+
 qafCJiDJ0c+gCV2r7jE/fE5UFAOAgI2faIDw6+aDprUwEB9yzK4i5+eAACKjGFb8rOWbCrmwPl0
 aakPbUJFdo5ahWlXxIzCn7IqGy2bqOeTU3MY39FY/CSoehBhOhOHL9RWy+6DnNpFmv8VMtbauYm
 s+i0EpF9vBkHtmzNY/hOIfiVmVv+CEdjsiVm35E8Z0+hYfyz/otIEuoFDotHhv9d/d714g/4LGL
 4Y1+W91JRX8NujLaYxk3MuRm6lF8z3YwkH/mrLuLCOZO0re6Tskk/lpQO+UTFJji1XdLayi/yyz
 zfmcCRxLozVQPCm4r6TZc196G4/Yaw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX9kBzgweFHcQH
 0mTeMqQ/pu6vyhglhLM8jFaxtjN+wq7jY+3rmt/uj/5MpMTI0tmqOCpaI7BHV2xVObKhlyKUYe5
 FoAvl5A7SUj+KWIzcHzwUl9yvrvNdB8=
X-Authority-Analysis: v=2.4 cv=QPn91QLL c=1 sm=1 tr=0 ts=6ad9e8d4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=mvgpHXA9jrGi6IPTKH8A:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 07yFYjfbncJzV3obIp8Qz24-z04rrYPF
X-Proofpoint-ORIG-GUID: 07yFYjfbncJzV3obIp8Qz24-z04rrYPF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 phishscore=0 malwarescore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2610190000 definitions=main-2610220042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_034333_815622_C53FC10D 
X-CRM114-Status: GOOD (  11.92  )
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

Currently when we perform system suspend, the phy clocks aren't
turned off leading to power leakage. Prevent this by adding PM
suspend/resume callbacks for the qmp-combo-phy which toggles
clocks on/off correspondingly.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c39ced168d03..f624195c9b84 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4463,9 +4463,26 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static int __maybe_unused qmp_combo_pm_suspend(struct device *dev)
+{
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	return qmp_combo_runtime_suspend(dev);
+}
+
+static int __maybe_unused qmp_combo_pm_resume(struct device *dev)
+{
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	return qmp_combo_runtime_resume(dev);
+}
+
 static const struct dev_pm_ops qmp_combo_pm_ops = {
 	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
 			   qmp_combo_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(qmp_combo_pm_suspend, qmp_combo_pm_resume)
 };
 
 static int qmp_combo_reset_init(struct qmp_combo *qmp)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
