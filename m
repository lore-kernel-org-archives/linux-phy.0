Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF3F606A32E
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 10:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J2QD79Ty;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=kCSJqdf2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dx0K7e5ajdF5b3xrT6TWEKEovGLrCllltWAwg30b4Kg=; b=J2QD79Ty7dE5uEMpDm+dU1x+YB
	wrnzwUyflar+8k1Zdu5wMAhMBZMkuGIboK7qD2MD0YpHyA9wr/D3EPdcJVX0rx8dwC/Kr8TzOB8Jj
	JUA9uPliE5WU+gWQyJ3E4vnIwf/KNDbx/jPI5LTXVYFknEcIvIu+IUbscyczS839rD1uVmt3WoHtP
	R5KEnwm08Jq652uL81BrvD1BRnnnwqL9UONng7JHVS2KjQsE/91YHci0P+r32s0UsQJdLKvVik6JF
	wzWVlBmtGCX6gFDC4vXYDf1eoIFTPVZkz0wt6dk74ffqSymtaynl1ii5pQ8Lzy0nyLtL4wRfDYTvW
	qD2N+SYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5pD-00000006Nji-3KbF;
	Wed, 11 Nov 2026 10:45:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5p9-00000006Nhg-2JzE
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 10:45:05 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AB5KIlb1386357;
	Wed, 11 Nov 2026 10:44:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=S9ZN/zEiV6O
	4JaUeBTeg9wyMfo3tph/uH8eWT6D8b4w=; b=kCSJqdf2QsnLhMpEAjMtPRozU0W
	0I2VfSMz/vu30YjwKBJxjQQY7UQkd4mI1y6k4p+40iStRqBUvTYRytUda4fNmwc1
	MscNjokfwzsA5Aig88Ggj9ksWauS1TbjfB3gzhgxkOhTMtxtQXRdiU6f3SWHW88V
	UNX3x+ARTt1Rx556DS1Kz9E2VppfTxGyZO87777efRo8wZEEf790fecr4JdcZuCI
	fB/qNK9lzjZS3DLIBR+8OBUNc+TDXrm3ImX1yfcGCJ4Zd5PUBerlmfQ0QphcftCQ
	kxzwFCPQb7XeAGG/xSVuapseHectTa0PUV6OUlJtNfBLNzBcwuLv+/uRCAw==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hvdnma63j-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 11 Nov 2026 10:44:51 +0000 (GMT)
Received: from pps.filterd (apblrppmta01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.11/8.18.1.11) with ESMTP id 6ABAilo9010140;
	Wed, 11 Nov 2026 10:44:47 GMT
Received: from hu-devc-hyd-u24-a.qualcomm.com (hu-vnama-hyd.qualcomm.com [10.147.248.182])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 6ABAilmn010119
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 11 Nov 2026 10:44:47 +0000 (GMT)
Received: by hu-devc-hyd-u24-a.qualcomm.com (Postfix, from userid 4857718)
	id 49B9721874; Wed, 11 Nov 2026 16:14:46 +0530 (+0530)
From: naidu nama <naidu.nama@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, irlied@gmail.com, simona@ffwll.ch
Cc: Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com,
        quic_mkuntuma@quicinc.com, mahadevan.p@oss.qualcomm.com,
        naidu.nama@oss.qualcomm.com
Subject: [PATCH v2 1/3] phy: qcom: qmp-combo: delay Type-C mux switch while DP PHY is initializing
Date: Wed, 11 Nov 2026 16:13:53 +0530
Message-ID: <20261111104434.2222182-2-naidu.nama@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Reinject: loops=2 maxloops=12
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-ORIG-GUID: _MDfzaLR0t6kavM2-HEdlz2A-VFrY0zm
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTExMDA0MiBTYWx0ZWRfXzhv1040x9ldJ
 kDEy0rT8IP9zg6ZM2gim2mjJPWoCNGdxnxdkawDnIz90QwMHelopO6MF4568CRh97NHRBsqk42U
 yQaVvTU9uvMlIa8kaKqJNOylGhGAcbI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTExMDA0MiBTYWx0ZWRfX+kHtzig9zO+h
 FPZfP2LnjtxLORXJc+VswgXgH5Qi8h8YXqv4bx6rYPmLRn4HTSC2zvrMlyOtlhD5KqSBjXBNdAw
 44D/e7MH6MmXl5UkWE2PsK0zAoj4o5Dimzp4fuZNfpjo9g0LDzGEKS1+r0hiuTxpmtLfAJld19d
 p2zaaW6d0Ur5HXqqQZn76RgyI6/3NG4q4vKhIf8ImiI5AiaPtNcGSTaDNCvpjp56qal6K5Leh7h
 JotfdIb8ybfktp3Wg+P2ELBOSOi5xIZIMZNZK0Lc1fLSesDiboCQt9R2i9XCNZv5K2pg2063bxP
 gdLuPhlroN1TDXptPJvdFfXEhXzvmPFxGRuH4SsbGsp9sjl+JbD+hScBmcFycZKCaoLOBZI9JIU
 l50kyxOYbauaQCv+BfL0dKxxZ4c7u9rDAx2Qr+x3F5kWd+3w/vS3gsfLxdg46FL5reTDunifVuP
 pObRl7Q8fk8UCGsoTvA==
X-Proofpoint-GUID: _MDfzaLR0t6kavM2-HEdlz2A-VFrY0zm
X-Authority-Analysis: v=2.4 cv=MpzHeGae c=1 sm=1 tr=0 ts=6af44723 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=zJRp6_cAMcgA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8 a=HxeoS3nH6iSbXD-5zs0A:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-11_02,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1011 impostorscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611110042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_024503_710491_99282671 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.7 (--)
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

From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>

The Type-C mux switch guard only checked dp_powered_on, which is set in
qmp_combo_dp_power_on(). However there is a race window between
qmp_combo_dp_init() and qmp_combo_dp_power_on() during which dp_init_count
is non-zero but dp_powered_on is still false. A Type-C orientation change
arriving in this window would proceed with the mux switch while the DP PHY
is mid-initialization, corrupting the PHY state.

Extend the guard to also block the mux switch when dp_init_count is
non-zero, covering the full period from dp_init through dp_power_on.

Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 61d8b7a5ce8f..3f93043f94e5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -5163,7 +5163,8 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 		return 0;
 	}
 
-	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
+	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY &&
+	    (qmp->dp_powered_on || qmp->dp_init_count)) {
 		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
 		return 0;
 	}
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
