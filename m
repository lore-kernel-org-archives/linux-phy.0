Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B448E60A3807
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G10vZOGI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=OZOBP9dz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TF1qzKsj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Dj1QdXKJX5+2rcO3NbJ7pHs+7O8cXWaHsQLRvfQWcOU=; b=G10vZOGIujXVqzzQXzQL27EDkE
	nCYU+5btzKY7ooM+9IMWAGuvUKAA0amNphAVVW8KmT1zYq9cH5lA1L+pSStBJ/VEg7ZyI7Vy30tnY
	r4TwJlZO0lReBh+ra8urHsnFqB1h1nsrAi7gESX8hmncHkY2sJpJGK0HukdCnxgEW1ViVfXQN3udk
	ks5C/AiMzZiTm4qFy+fJ6jocdhTxXwGRbRsY6xUjmEtyJ8uMLMC+KwMZiWDgj4x+9FU+Cxfoybspo
	dW3/AVhFFhAZDSLR+DkByx6H3+bNdMeNRbW0d+4hgoXCp/FbBZxs6nPw/nVEMLiaV8kUxcmNftlir
	+fp1ptZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUi-0000000GCOx-1zOz;
	Mon, 02 Nov 2026 10:42:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUf-0000000GCNt-3j44
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:27 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AJ7L260836
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UjRg5ghNYVXD2NVWyWs3nDdXr/lQ+mTWIwgMVJIwbvg=; b=OZOBP9dz1Uprw3Uz
	iGGU+DTovVKnMMZjPiP7QTuIegNXkSdzHJdUWE84sxJKwCBacbxmEkj0pR2Oy/qa
	bJQZAr5+9C2SuPluYVFza7Bz692YqIFcjm51kkh24ptW6EvkTNSefExCQPjA9AYM
	5/TQ24J//zVjGWKiY3ABSTZRcFugbXKTaxZWgHX+bBtNeVgRYsNYbzFKkwzd0kJ9
	m8OA44ivnDnh2XPYtpc63Zg0IvZpoQ/hiUQj1hXz2nVx2sVB6wqmo0b2mSAl/sss
	Wi7oZpAfsiqAOXjzylfqDrIwbtEyqukS+qq5MZsfeks1B0QB2UNTNOa201QAa6Yn
	nT/QQQ==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpqmvrc6x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:24 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-4c734afb8deso3645148b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616144; x=1794220944; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UjRg5ghNYVXD2NVWyWs3nDdXr/lQ+mTWIwgMVJIwbvg=;
        b=TF1qzKsj9kv4M0N9yuTlFfwMWpjWmdOkVLUopN4JZPJNT33INBKtWNVcZ/w7n+BtJ5
         hv2cHM3dW1RjxDZULTjLFiwkfqZjWvKmSY94GxCoCqGLeMcteheri2YLDLdNgw5nHeP3
         /ybbVnGktR7PR+2n4iu7NYWZvqR26WKgt4lGCIIoxykSCrly3x9wAZJOqFQSAPZmf4CS
         9RdeNUff/+PNsSMj3UR5kiq9OxHTgTZBb6m099EH8NL6ehHBVJ8it4KelcXO4MVpGYA7
         JYF2wmmdjnj1MP6Qhps/OpwuevEJxKJX/h7t4mrlcFTmit7XVDjljes32F8TbYJGNIs2
         u6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616144; x=1794220944;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UjRg5ghNYVXD2NVWyWs3nDdXr/lQ+mTWIwgMVJIwbvg=;
        b=vyd5W+YIvqcOL/wtmiFXN181T107ciwIyrUkIuXQ8AG5SWm+tG82cECgQsqI4HUUXS
         KrBt3jONFUcH7rm70ReLWHWBoe4dVmeAqq7GT+6QMMATz357LmOnu7G3oGOBg1MSCYzx
         Ip/eKHU2bT0q1GZ4BdJTO2A8RhVF6h3KxMm1Z94L3PbQYgEKEZw8Y8/KUgTUtqPPPevb
         4f9iE5SwfLstZYJWFfwDkvgmTVZ8ngDKa7ENi1Vpagfpw0Kmfttvb9cU7JHjid29X4ke
         p8kpssMJlZyfYYz0V+/x9tYmgYYVmVe9q4kWU+36sBBYH5eyF8ZbLQ1bRz7E/SHbpU+V
         pQhQ==
X-Gm-Message-State: AFq9FYLBoz9y2sR1mYeOoKsN6VDvLYUn5/p7ghEsR9be9euNn2WGq0Lh
	tuLsZVUvBWmsnJkEa6H3ztbNWCPikzqxvHIgwPPMHb7y0x4uwobrHl1ad0ZBuL8Mn1BWRwV6FFB
	4uGkNVP4Bpl/F29/hc1sVlyeCUXvCBx3PnBDpsNsRW6wriACgyuFKSo4M6299SGtLkvq7
X-Gm-Gg: AYBFou0UNBwyH+nuf7aW2QzcTDkfDmqk8nfAHWF9JFroaDExYHFNaQEBXooJmNSzR3w
	N+PkQH4Eh08lq543gElTLIMUZwqk+nqPq9boKwtSVJvUI/Udp0+n+4TRcCK9Us1BqkdPEwOsOn7
	NdfPheIFNDWCHIMmmHPnxgIJdksSxRTy4QoN2LO+iTqSwYO+QbLtb2GFZoBXGg56RiHTVrR05LU
	eXCldj72HwOuZ+VFYsBjGB/gQPODcz9+2/94E9Z08hkAHoBSY5T14p3zW/5KXLAiUFnQAJKf8Q4
	RQCNP7yLGWWrwcQUNX/ahPQ8EXvc7UkBlCvBSPIsZTjiOpeO71hdJNNnbCe3BrkM1YO/eVs8Bhr
	WtBXENnymauIwIto/5PqFirUaRAbEPaTDRV5jluWNC7uqBuhm9Votgk5izs8UnwbZM/oq7kYBXB
	cAh59ODAHikdQiv+T+MQbY0j2kjrZXuaR2nQ5SLWTWd/x14lHUIIrKvMxyWIQ=
X-Received: by 2002:a05:6808:6413:b0:4eb:e665:bd01 with SMTP id 5614622812f47-5640de56ef7mr6709766b6e.34.1793616144023;
        Mon, 02 Nov 2026 02:42:24 -0800 (PST)
X-Received: by 2002:a05:6808:6413:b0:4eb:e665:bd01 with SMTP id 5614622812f47-5640de56ef7mr6709752b6e.34.1793616143545;
        Mon, 02 Nov 2026 02:42:23 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:23 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:12 -0800
Subject: [PATCH v24 04/15] media: qcom: camss: Add addr_update hooks and
 guard CSID reg_update
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-4-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
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
X-Mailer: b4 0.16.1-dev-17221
X-Authority-Analysis: v=2.4 cv=TMDQ2Fla c=1 sm=1 tr=0 ts=6ae86910 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=8v9F0_qJuxzZnZknmOQA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Exi0_l8x8baSdEKBx8YwbZV8wHpm2uas
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX4rJHY3IP3P17
 xAmdjrlnWMqRL7oekqHF1hUmCn9ogH70GfHeOdxZpaneww0lMTBwv8VEMBCGe8dj2VSdypqnfeS
 U1Sv7qoiyb9pFUQD7NcKKRebRNVzn/M=
X-Proofpoint-ORIG-GUID: Exi0_l8x8baSdEKBx8YwbZV8wHpm2uas
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX+bqkXh9X5YmK
 CNEyAmC3kON6altNJho2gR4qLuA1Dki1pPeB0b9GXJRULsmdb0r2evUFYZmB6+ZyPO2i4F//rHA
 nJo3X6CLlCYOskdNRiwU3oB4YhYYHarz3wtT2K1hLGWkGNgMU+mdrIQDqVKqGzI5KUd68AUJ7mt
 DceGAGPJETMcqYdEKA4EDMc6aLEkBaOheuqPlfSuqtczxwpCNBNzpJjPLENNBtwVyMbpcz2XJcb
 XfFv5xGw6ZSJ7cjBNT2ApnVJuWIjG2N75GFp3/aR/DO51g05+PhnkzzsbkMiD/LTXbq12LoU+Dj
 /fE4+MwtMvosouq6ia+XUqjutNHxfIhHNB2rEM3dNsdEJhqh16d3qoboBX1bP6X2EUzyTxAKShi
 xzyjIMBBedVEosnzFfrspPnaRkocP8tra+PGFaf0Q3Dd6blMCXtL36ustT2WKiftbndrP5IHZOz
 y3/1HBJI8qZ83M9U9Ng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 phishscore=0 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024225_935144_E99EC63A 
X-CRM114-Status: GOOD (  19.13  )
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

From CSID 680 on, CAMIF was moved into the CSID and the CSID became
responsible for issuing RUP commands. Starting with CSID 980, RUP and
AUP are issued separately, and each command must have its corresponding
SET bit asserted in RUP_AUP_CMD; otherwise, the hardware ignores it.

CSID 980 and newer require a specific stream-on sequence. After the RX
is configured and before the RDI path is enabled, the CSID must first
issue an AUP and then a RUP. A RUP issued before that point would leave
the VFE without a BUF_DONE event. Therefore, once addr_update is set,
the VFE must skip the initial RUP during stream-on.

Add addr_update hooks and camss_addr_update, and make camss_reg_update
handle a missing callback safely. The VFE keeps issuing its initial RUP
during stream-on and behavior is unchanged if nullify addr_update. The
skip takes effect once a generation that sets addr_update is enabled.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-csid.h |  8 ++++++++
 drivers/media/platform/qcom/camss/camss-vfe.c  |  9 ++++++++-
 drivers/media/platform/qcom/camss/camss-vfe.h  |  3 +++
 drivers/media/platform/qcom/camss/camss.c      | 15 ++++++++++++++-
 drivers/media/platform/qcom/camss/camss.h      |  2 ++
 5 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid.h b/drivers/media/platform/qcom/camss/camss-csid.h
index 5296b10f6bac..2f7e593defed 100644
--- a/drivers/media/platform/qcom/camss/camss-csid.h
+++ b/drivers/media/platform/qcom/camss/camss-csid.h
@@ -137,6 +137,14 @@ struct csid_hw_ops {
 	 * @is_clear: Indicate if it is clearing reg update or setting reg update
 	 */
 	void (*reg_update)(struct csid_device *csid, int port_id, bool is_clear);
+
+	/*
+	 * addr_update - latch buffer address update through AUP
+	 * @csid: CSID device
+	 * @port_id: Port id
+	 * @is_clear: Indicate if it is clearing addr update or setting addr update
+	 */
+	void (*addr_update)(struct csid_device *csid, int port_id, bool is_clear);
 };
 
 struct csid_subdev_resources {
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 2680a9914765..4f8867daea4c 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -487,6 +487,8 @@ void vfe_buf_done(struct vfe_device *vfe, int wm)
 		ops->vfe_wm_update(vfe, output->wm_idx[0],
 				   output->buf[index]->addr[0],
 				   line);
+		if (ops->addr_update)
+			ops->addr_update(vfe, line->id);
 		ops->reg_update(vfe, line->id);
 	} else {
 		output->gen2.active_num--;
@@ -525,6 +527,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
 
 	spin_lock_irqsave(&vfe->output_lock, flags);
 
+	if (ops->addr_update_clear)
+		ops->addr_update_clear(vfe, line->id);
 	ops->reg_update_clear(vfe, line->id);
 
 	if (output->state > VFE_OUTPUT_RESERVED) {
@@ -552,7 +556,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
 		output->gen2.active_num++;
 		ops->vfe_wm_update(vfe, output->wm_idx[0],
 				   output->buf[i]->addr[0], line);
-		ops->reg_update(vfe, line->id);
+		if (!ops->addr_update)
+			ops->reg_update(vfe, line->id);
 	}
 
 	spin_unlock_irqrestore(&vfe->output_lock, flags);
@@ -588,6 +593,8 @@ int vfe_queue_buffer_v2(struct camss_video *vid,
 		output->buf[output->gen2.active_num++] = buf;
 		ops->vfe_wm_update(vfe, output->wm_idx[0],
 				   buf->addr[0], line);
+		if (ops->addr_update)
+			ops->addr_update(vfe, line->id);
 		ops->reg_update(vfe, line->id);
 	} else {
 		vfe_buf_add_pending(output, buf);
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.h b/drivers/media/platform/qcom/camss/camss-vfe.h
index ae9dad353a37..8312e4c91e98 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.h
+++ b/drivers/media/platform/qcom/camss/camss-vfe.h
@@ -99,6 +99,9 @@ struct vfe_line {
 struct vfe_device;
 
 struct vfe_hw_ops {
+	void (*addr_update)(struct vfe_device *vfe, enum vfe_line_id line_id);
+	void (*addr_update_clear)(struct vfe_device *vfe,
+				  enum vfe_line_id line_id);
 	void (*enable_irq)(struct vfe_device *vfe);
 	void (*global_reset)(struct vfe_device *vfe);
 	u32 (*hw_version)(struct vfe_device *vfe);
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c54185c93a8a..be58a39f4a8b 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5049,7 +5049,20 @@ void camss_reg_update(struct camss *camss, int hw_id, int port_id, bool is_clear
 	if (hw_id < camss->res->csid_num) {
 		csid = &camss->csid[hw_id];
 
-		csid->res->hw_ops->reg_update(csid, port_id, is_clear);
+		if (csid->res->hw_ops->reg_update)
+			csid->res->hw_ops->reg_update(csid, port_id, is_clear);
+	}
+}
+
+void camss_addr_update(struct camss *camss, int hw_id, int port_id, bool is_clear)
+{
+	struct csid_device *csid;
+
+	if (hw_id < camss->res->csid_num) {
+		csid = &camss->csid[hw_id];
+
+		if (csid->res->hw_ops->addr_update)
+			csid->res->hw_ops->addr_update(csid, port_id, is_clear);
 	}
 }
 
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 7dc2fd9f03e0..431afeb381aa 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -182,5 +182,7 @@ void camss_delete(struct camss *camss);
 void camss_buf_done(struct camss *camss, int hw_id, int port_id);
 void camss_reg_update(struct camss *camss, int hw_id,
 		      int port_id, bool is_clear);
+void camss_addr_update(struct camss *camss, int hw_id,
+		       int port_id, bool is_clear);
 
 #endif /* QC_MSM_CAMSS_H */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
