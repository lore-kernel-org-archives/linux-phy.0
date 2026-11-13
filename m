Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0141606A8AA
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sjh+4HbL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ZALzFsDQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=j+E1RTzj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=NfUdWLGg7VAzn80Xqu5DlKD837qOYDqrd68mjyjM898=; b=sjh+4HbLsBfRx+gB+rFI/GyAtb
	gxBhXFxkbE6HHey1ks60kAyEwIZ2D7B0SFStbU0npzbDAVD+DgCyE2uceOiYHYrcuw4nFbcUwBzp6
	sSAigJYEv5a/94HmvCSKJxR8FShd+ojM5rjVNUrmQRpWF8aWulU8Guu/97FkG2BKA6kqb/19mUE3j
	KanfyJoHjPH+7SLXjU+GwIesRwXxEsdWzpjDpWPpX/5YShC9MG3SBopyZL2SCySnNx0pBP16bF3Ex
	o9MD0RMzxsdgcmmUTeE2yOHYqIwpxrmJ0h/qyDYAAehkHqwTGtDbKQduHJEpBVj+nRggw2h6xh0J6
	SWpz2H7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoZ4-0000000CNNg-1dZl;
	Fri, 13 Nov 2026 10:31:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoYz-0000000CNME-0fdP
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:31:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD8VJoV2515636
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ATXG8tU7ghaO2OKKtLwLObM9UgHsDbzOalB
	AFc4YEcs=; b=ZALzFsDQWRzrOu0/BQMIXJNbEt6+iE3h5mZEVzZ1eBmFmA/0zAZ
	lEQqEpn78xumMMLTJeJD4Nyv+HdzcfyS6PRUc01saWhR8OWI//j7FJDl5AK16Cgi
	KCcM0aRtSTCYQ3A9Z6+S4YXEPGU8O/drYaTY/TuwJeYF6NsdNnOOsil2MLiXpzcn
	tDcvkke+Nk3wzLzttrnUPluvme5yiH3lnzXlxCC+8j2jbtg3NYxJTbKAxoIlZETU
	a2GPA/cteSAXr9QDEFn/cU/sxS/UnHzYOcnGL0okQRtWqOw7Ow+J34RXjltHHMa4
	D1oixahSeIOUCJRe0C+7qh5b4tPVHqEaMZw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwg1bbmd8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:31:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2eaf8ea208bso7014175ad.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 02:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794565879; x=1795170679; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ATXG8tU7ghaO2OKKtLwLObM9UgHsDbzOalBAFc4YEcs=;
        b=j+E1RTzjNFqyzr7s5b26gwy8INrCh4A0EwzwJaWANgaP2n4Y/vRuXqc4c0anIriANy
         rHaoXm5B87TEXTuDATFlWehYdOF6Zm6ihbU0oMbXoCUf7yNGRUM4jwCSz9FETUXJhI26
         MPpr2QWR8ET848beP2gufJzc6/M7ngBUqLY/N7hqa0/p7jxgi/kPfJBJZ/O9epYWiQnw
         FQoD6dq2sDaDTYFJRaRXRDrOmx/uKy7KrQKQNO21cFym1hxf68T9G6GulF2f7t4fDwm5
         NGZHJ3EALbWScDz5W8o9F4sYQSupeHNhgl7ejoZdUUnBVO38l1T5pgLLsWuF1NRJkqmI
         5FtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794565879; x=1795170679;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ATXG8tU7ghaO2OKKtLwLObM9UgHsDbzOalBAFc4YEcs=;
        b=ZnOyk0AeRCSAZiWuwOnwMWq8MxQ4IlM+ztrj0wXuEqc/fzIthLCYGCRB43woEeGhy9
         RkN/4FsPHQETHnbPYMa2DUyyIJp59JtHF/uDMt8D/+28BUKfm3mO/tfrGaSgm0aZQWDq
         xYHKTanBkeh5q0BKQOJKcJPQjCdf9UNzLyfhcrq8PVRI62ZRbPeAoAYKeIO0v1VAGpZG
         QGMzev87ysO6LKqVY9SXJWWzFP2b8i3V+vPHBV9U+QG9fSXCQhCPltM5S1ygylUqXD2L
         OB2DB3FrBgviOwSYKDANo7DZtbk0DdnLEHxy+MW3BxHh1DluFkyFjoqc8TmabaF0b/Hm
         znag==
X-Forwarded-Encrypted: i=1; AL+hErFIH/SPcq/LiQWLNBRx+IxGtCPB+MKiTvO9L4GXKoVzVYjuRepGeAk77+iT8GIhQVZF5JfZ8R4jdMQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z/Hg6+ynhAzxwBnl6wZl7m42DoI0BaPCksNhnoq265MXn1mLkhJ
	VRgEBmZfIcbtbIApSbyhShVgwlbjvZT5+2W49W5zFV7dIGAVW5R+BrxgeuJLKhOlKN1OQ9GuZSx
	aBqMwhqNxSQB93lm2quehfi+ry3jiPaQqPivIqEcYHlHSmrbovwUC3ctd9DCcjW7b6fG6
X-Gm-Gg: AYBFou1829ubOFszzI/hIp+5vZ02BPo/t0EevFjdyK+/SonDWDkf3gBLVzP5wfIRo33
	MyuWGP1TxZ3D3msiaQDwmFFolMocl0BHSQQQf3WZMvCYvGy6uG9jWOb16gwxPfuKKq03ZHGZdIw
	fKYzCgrHOM85FoSQDXo/dCYqsStLKGaiBkWRqvuCO0ZyP6oiKZK0KdA0CzBoUV2RupufhZwbmHW
	0KCsiE02ckwbXSIJ+KngkCcPzhxnkHvNgurDzhmP0QqlAxjtSW5OAuH8NMJpt9zLSh+NB4H7pmV
	7D6ArNo76xKLRHNFirWCMoGydV3F2S3aQRIyrpDDMzPo90zwPqyM5VgeWbWW2vuSvPY+9AUveT1
	akf4yRQaj6MG/QKTxf5ywJZo3f8GNeGVOqrNaszbaJug0SKLGM5D5I+Z88cppOBKvN6AP6H7El8
	/KXg==
X-Received: by 2002:a17:903:8c4:b0:2e9:7ff5:544c with SMTP id d9443c01a7336-2ee0da7fe45mr19790265ad.25.1794565879051;
        Fri, 13 Nov 2026 02:31:19 -0800 (PST)
X-Received: by 2002:a17:903:8c4:b0:2e9:7ff5:544c with SMTP id d9443c01a7336-2ee0da7fe45mr19789955ad.25.1794565878579;
        Fri, 13 Nov 2026 02:31:18 -0800 (PST)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ee0f8d4612sm8072585ad.57.2026.11.13.02.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 02:31:18 -0800 (PST)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Prashanth K <prashk@qti.qualcomm.com>
Subject: [PATCH v2 0/2] Add the PM suspend/resume callbacks for qmp phys
Date: Fri, 13 Nov 2026 16:01:09 +0530
Message-Id: <20261113103111.156476-1-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=c6Q+0h9l c=1 sm=1 tr=0 ts=6af6e6f7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1z1NzX3wVr0-GGqwuu8A:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: Wsghm3-4tuWBfDuk8Bf9cZS36-nhSE2d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA0MSBTYWx0ZWRfX/svaS6eRqcuO
 3wKhdPXJPapusj/zp25x/oUGWFKDZ3xjO6CMzRZcNhhEis828sLPpT7xt/7unkuNLUyQ2s/UeEM
 dqu1DzEw3zYjC43jYevmnEXvBb3Y3Y9VGqVha2NXZZEyGY1WU7vbT31xL+wMLPX/cQaqI5AKzIF
 +nVh+BpY+hF2MF/5BWopFyKv2VBInPuJJAJmlERjhN98gvaWN1ocyLgfdiGV6jWWWq0J+JLg1iv
 JRY++zrZDPqnWvCkpialkrM7P5KehUSKmMiz8r0gXbVTIsE7a0tX6qTi9qZY5c+5Aht7weBUQOi
 2zXdaJkHVsNY7iP5W/kTpI2nvvmhauQj+4Hd2/LoC8QHNsLgoM41J7v2Y0FVSuh7Lr2kYjiBa4A
 rh9vf+qaoMayjL7K9egahEdDMvYnfSdLVdG2aiFSyOuQcPghbvtVyymVsLR5juKReDJiNjaCYB7
 7VDbWb+IhAtgl3pvGBQ==
X-Proofpoint-ORIG-GUID: Wsghm3-4tuWBfDuk8Bf9cZS36-nhSE2d
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA0MSBTYWx0ZWRfX2o48jQPQ4a6l
 aZsUt0W7E1yZfJ8FF6xO4YfQswJCpC/IJTj9J8d8/EFjJb2cawkP3QeeQkpkV8NZdzKJKesuguv
 vhTPFII17D/OGF7qLgNwCxJza3pUAJY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_023121_207436_AF565D9D 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Prashanth K <prashk@qti.qualcomm.com>

Currently the phy clocks are left ON during system suspend, this leading to
power leakages. Prevent this by disabling the phy clocks during PM suspend.

Changes in v2:
 - Added pm_runtime_force_suspend for pm callbacks.
 - Added mutex to prevent race between typec/mux callbacks with suspend/resume.
 - Link to v1: https://lore.kernel.org/all/20261022104321.306679-1-prashanth.k@oss.qualcomm.com/

Prashanth K (2):
  phy: qcom: qmp-usb: Add PM suspend/resume callbacks
  phy: qcom: qmp-combo: Add PM suspend/resume callbacks

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 ++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 3 ++-
 2 files changed, 8 insertions(+), 2 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
