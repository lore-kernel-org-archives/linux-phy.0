Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3B0606A329
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 08:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lX103Dzi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Husz4Ph2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=APVIM8d3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gWFnT1u+JuSra+imqz4uy5G3VlvbeGwcOPLABR64BZ8=; b=lX103DziiJIRCi2Djh+COBc8Uq
	U75mNY2Il2UK3ycfPwbdroNd0/LUhVbvEfDv3i7KM5E6EbXCeypmc59tckySNiDhYFYK5uatraNuX
	lZED34EoIp5g03LPlGChBF8Pjg0w7ayCcXH9mKw5U8tZ4CcM+CWzvlF7wJk4VhOKl+L5X3CD8cb3a
	xfd8PRfKcIcKcaQ/qoqqM3t2PMCQ/ioLG3ONswf05XMs+F0SMj6+x7LxYHWfecmv+jmwr0PE+bHtc
	PdmUVCoD9GLY1jau0pBvL5865lO3RsufNj/x2lldOMtm4qXk/AAjFo9svHoTlT1KKSdxh8ADR/8dC
	G1HzrL2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFIO-0000000BYKU-33uk;
	Fri, 06 Nov 2026 08:27:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFIJ-0000000BYFq-1dPi
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 08:27:35 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A67R21h128919
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 08:27:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=V2wYRQpevpC
	b45SBy3n0W/fgsH08qxa9cpiriaBTcOI=; b=Husz4Ph25FxvMw0OcQN+Bo5d0ho
	eL9lvD29FR5ZRPzyWGSLodCVGDtBzNjTatbO+Q6ac8XZZPmoBVbWF42KrWz8k/9H
	KahRA/gOJNG8rpNvRdNRFHhyXvjWE6gzSDA6FBRXmU/Kf5rrqdCR+4VLppJVtinm
	dADOptrucQHoBxJ9YSjkuI/TTgsBfNCHMY/VVnPg2W/c5RKbccUxVIviszFiMr0t
	25/u4dtpcIKSyGNbEITEgzA0Z3TIQLAyBdnilweP97gCG/gkiadwrL8oYwnW5IYp
	ZjIV4jLpHRqM33oahqpZmFrgM87G/iE2h0H8m/Y2irnwVtv5UsDOrNiKEQw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9sver-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 08:27:30 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3b0a3ee64bbso940886a91.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 00:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793953650; x=1794558450; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V2wYRQpevpCb45SBy3n0W/fgsH08qxa9cpiriaBTcOI=;
        b=APVIM8d3sGwQbAaj/cnISmTVrXhvDakAQNbuIaZhq3AigqP89041Bt5eHmE8ieeEvq
         BZrKvqP7M4JHSISsmBmFdZAv9gy326qu2iS4BKDylzSITY/ATLYYRpfzfC/ezZ70d2+j
         iIsIBJKqczp7RPxrPSO2o7QrOqny3K6AAFIKo08/1A+bUhVNIJBV16NgMS3JkpMleZtA
         rn2vNnLcchJyq/sskeQU/3kKxDRL6pN+LNtk3kzUmYdT5vsc1SEMrRSjKMytnh4isu+8
         X4DQUGJZM1oDEb0PECwbDkPTR4fFpFfhnBfZ+6cXll6jsqM1PRsuzglyS2tVQdfYvOCU
         TKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793953650; x=1794558450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=V2wYRQpevpCb45SBy3n0W/fgsH08qxa9cpiriaBTcOI=;
        b=CUFVCrz6PQP1FG7z/9vpRE/7D4pIW0HwocAebJSMiMzh0mCvGZlM1NHb/CyYHJ6C5x
         SzOKn1t4hh13r/BUt4DE84T8qaWs1h4zQ2UvChK3JB26y8bsEweDz/pA/3fIu+MxW2Lc
         ogeEzTWdMuPKUYP98BQV1qDH83TLzSxeeaFGIg36Hr++Iz4EO41Fy/BTuYWdKhFHHQeI
         qG5nqV0wsFdYvbHDVv175lASsHjm+OCc8MecdFRe4yYUNCpYObSm8zODxg7Y50CUdEcx
         P6699lg42PkqDY1ndG6qhEDaWYr1pwiZiiA247bR7uptTdcNcYMHDnZ5rhj8VkAuqXkI
         u6gA==
X-Forwarded-Encrypted: i=1; AL+hErG7iwnKXmIh3peYZ3IQ6mxMKkOO+AtSCOvHchThPQj9sJJfSkTedKIGsYuHcX7a4m/5MIFNzgMl9gk=@lists.infradead.org
X-Gm-Message-State: APuU4Z8dOy3QxxbVeYGkDw30b0a6EVHc8om7zNZjWab78mF2E0j5d+3t
	FNV+k6puaoXaAp0p9PTCFm5MXVfBhCtNJ5cK8M81ik5otOkjrWyxkLLMeyueUKXIM/jCXQuTjdF
	Cqbf4n1CMrqqV+6n5UDVW8D6wauQqRoq2/ZQHpXFBsYleOUuvZUmtiG6dZRrVNNNFP7NB
X-Gm-Gg: AYBFou2+prCWoE3yC28wDMTP8ic2p7R6lLWeXi59EaWPuZNiyLGTEUO+G8r1fec0bjb
	xBMdRr07fAtHkZPOTqG8WBwQZOZATRLrIBe4Uf6v9fUa48HJ7iFo/Te7utuFPL3V1ALBd/qN8XK
	eFMrzIVFxco2xD6kL29WGus/7rMxpd6XwWj9Kt6u5tVFnKfI1yFwfI68FO3eNv3k+NtEOoFYbii
	xncLxfXmOfrTP3ZoT9Lt9dW8d7R9nv0tySyfE9u2zmCzqKRmW7JTLVNWrlM+rfqGal3tIuEymw6
	X3SpNSCo1YUwzd1WWgQCyEv2Qu2LflBMef9XPskeGia6C0F8YAijCyoHLHyypFKIkh2jSZN9RzQ
	zC2jqZmL7lE1qWI3aYyHD9Kbvo/uI3rKicJhcXjNL9bpkSlQUID+oks7iZNXr6Pj5igqRBI2Htx
	ze/w==
X-Received: by 2002:a17:90b:2b4c:b0:3ac:4e18:2390 with SMTP id 98e67ed59e1d1-3b0db5f54cdmr2023383a91.7.1793953650327;
        Fri, 06 Nov 2026 00:27:30 -0800 (PST)
X-Received: by 2002:a17:90b:2b4c:b0:3ac:4e18:2390 with SMTP id 98e67ed59e1d1-3b0db5f54cdmr2023366a91.7.1793953649879;
        Fri, 06 Nov 2026 00:27:29 -0800 (PST)
Received: from hu-taparana-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0d7c42a72sm2433951a91.3.2026.11.06.00.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 00:27:29 -0800 (PST)
From: Tapas Rana <tapas.rana@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Esteban Urrutia <esteuwu@proton.me>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Faisal Hassan <faisal.hassan@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        prashanth.k@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, Tapas Rana <tapas.rana@oss.qualcomm.com>
Subject: [PATCH 1/3] phy: qcom-qmp-usb-ss: add shared SS-link-state submode contract
Date: Fri,  6 Nov 2026 13:57:14 +0530
Message-ID: <20261106082716.128968-2-tapas.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDAzMyBTYWx0ZWRfXzvxa1HgW3Slz
 sViJ4zo9iMCya6wBQi/PXZRxCIZRsndZaQL3j99HXjlenzFx3x/UNhTvU9WBMh3Nv1BVYw18+BD
 fLfGtQZxHM1LEdXSqfNPZOd5DjPrCl0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDAzMyBTYWx0ZWRfX8A7+lTEg48ia
 NQjS7NN+iUkAuQlV9qXj91Mq3W9LhgBmw9OVx0tjWw+IKhWTAwzszbUKj4FVJzNxFz7FmRlxwes
 lT5aCwKRSbNwDgBBzEF5j7lpHMXQmCiKbURaZJHeoBpAFpET8WwZpnhq3FYVl/NoEZ9+apkzcK4
 ytz/5D/PSizjJjr3xvn+UtUdDZ/l24LIggtVU0P5u0lGD/9C3zFYCKZKkEuiypJx6ByqU/cYgww
 0YIYw8wOslOXejtca6DWJ6dpl9ftYgGVnuovz5z9IY1CA7oU0FwjDRWdgQUbrtZFAd5+jqahwF2
 JeXsLCAMrOlRLdG5x3ywTEhvLqMD4qCcxLh1OBOJYItdKXsP1J2/E/GKNSCwn8sr9KsV9GXPu1D
 kl6xTs0qqmo6aQhzKFD4ooiUGm9aL9hFdR7f2gKkeQO9/Ct8I3KMbv35mw28oEVGn2+SA6YIt53
 6peqZ+wdG7U2sn3xdlQ==
X-Proofpoint-ORIG-GUID: IzIi2RsuRYsNDrmlKJssyzRZEBzPuhX9
X-Authority-Analysis: v=2.4 cv=f6Pdl+yM c=1 sm=1 tr=0 ts=6aed8f72 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=LeDc4IpKX6SiiW4862oA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: IzIi2RsuRYsNDrmlKJssyzRZEBzPuhX9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_02,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_002731_453573_5EA20439 
X-CRM114-Status: GOOD (  13.92  )
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

dwc3 core only calls phy_set_mode()/phy_set_mode_ext() with the base
PHY_MODE_USB_HOST or PHY_MODE_USB_DEVICE. It never passes the
PHY_MODE_USB_{HOST,DEVICE}_SS/HS/FS/LS submode values to any PHY
driver. However, QMP PHY drivers need to know whether a SuperSpeed
link is present to select the correct autonomous-mode wake interrupt
mask, and phy_mode alone cannot carry that.

Add enum qcom_usb_ss_state (UNKNOWN/PRESENT/ABSENT) and carry it
through the existing submode argument of phy_set_mode_ext(), instead
of extending enum phy_mode further. UNKNOWN is the default so callers
that do not yet pass a real value keep current behavior.

Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>
---
 include/linux/phy/phy-qcom-qmp-usb-ss.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 include/linux/phy/phy-qcom-qmp-usb-ss.h

diff --git a/include/linux/phy/phy-qcom-qmp-usb-ss.h b/include/linux/phy/phy-qcom-qmp-usb-ss.h
new file mode 100644
index 000000000000..4da4d71e977d
--- /dev/null
+++ b/include/linux/phy/phy-qcom-qmp-usb-ss.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Shared submode contract between dwc3-qcom glue and the Qualcomm QMP
+ * USB3/combo PHY driver for communicating live SuperSpeed link presence
+ * at suspend-entry, via phy_set_mode_ext()'s submode argument.
+ */
+
+#ifndef _PHY_QCOM_QMP_USB_SS_H_
+#define _PHY_QCOM_QMP_USB_SS_H_
+
+enum qcom_usb_ss_state {
+	QCOM_USB_SS_UNKNOWN = 0,
+	QCOM_USB_SS_PRESENT,
+	QCOM_USB_SS_ABSENT,
+};
+
+#endif /* _PHY_QCOM_QMP_USB_SS_H_ */
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
