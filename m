Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44F98C88E53
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 16:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APs1rG2Zv/HLB2MKee6ZYHjRBeEM6SqYwrxNoWnZhug=; b=sQEnutorE0hULe
	VAVYYXwInFn8aaJGMlXID7A23zvM5X7gr2L63iiKzvZ9vJuJ1eVTElP+1M+FkBIuyDDd297/PpnLq
	Wc5MJWWV7qZNr20sITPIqg6Drg8ydvC7e+wPyUDriY0q9rNgwA+vwFFBl9EJUiETsHFhk6fGop0iB
	rSJT0PagVcv963/bMwUPmdxceFwS0De0sNe/uZyAkBgm8nF29cInhSa6pjw97W0M5xkb6JbXOCq1s
	kUEWflgdmu28YhkaaTk8GsZed7J2c64RRH+OUQgt2aaJUd9Ia0VAE9R9+uzkfBe2VzG7HlA8cxC21
	tnx7SYilUGgscqdOiIsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54Pd-0000000HFr7-427S;
	Fri, 11 Sep 2026 16:47:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54Pb-0000000HFqU-3ULm
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 16:47:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BG434O3426933
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kRRf0K4n/OMGCKpZc2soc2B/PhOw76TarQ44+SpuGLw=; b=Gyn0CnJTq1DkJPqn
	Y51z7WA82r1rUVVjSw+LbPwKv5TyYcKkz/ER8mU91MT7X4QxRMV+s7DCpuZk2b5m
	52QXOrlDZyhUTlPPjDcYryL3lD2lXgYqecTh9a2y3mHAJVNvS4SrAP44gYjnYfLA
	c8i26qWnODbnPajTBDqIWpuY9iWqF/BtbyOa390A4C9PZLSXxo5PatM20nEESppu
	dyk61MmDwWXHDOQ0rN3CkTsjunKzvx7+EOwpjhX8CH9M8NPstxOc0BSvqKrEuLWm
	QauT8eHDU1bbtXYDjt1E42OGUxlfryvWXEznHF4qqpcUsBxT+Cpxfgyf0V5m1Ezx
	vav+Ig==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmmubr5tx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:39 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-39b77130a7fso1864089a91.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789145259; x=1789750059; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kRRf0K4n/OMGCKpZc2soc2B/PhOw76TarQ44+SpuGLw=;
        b=HdkQYjNDHID2i812Xg2Qm3ejNcAXJ6QNiqHUE0X1qzClm90LzcQS2pcBXxs/Kf/5sK
         MfjOXlaAyAyuVJmkXnBgnkhnieCZd6r6bBr/uZUmboO0z9Sivk/gTACHpqDJ8/ex/yme
         ysLASIwkYNe6hq6p8hbutA9Jr3lxGnSNRbOkl++fC1EGjIylK1nvry4bv+UjgM9pJLBk
         l1mf3CNND1H8jVyce6WzSppziwbGgFnnQTYA+X7ugDqmyiUUwb77JBVO+Oxc6LXIm67n
         HcWfKlqTOiW2qSQs3XeWBdp3436zbxN7Osx2ZTuOKKlwqOba8eEiHCwKSKD9v59y7uNQ
         NNyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789145259; x=1789750059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kRRf0K4n/OMGCKpZc2soc2B/PhOw76TarQ44+SpuGLw=;
        b=LPAr1HRiadJYRsDmGG5HEOzj9bmkizPHQ0DVo/ZNEvuUeCVRMtIxVaSvUvZDNcCSoy
         yG6uNPx/8dryMFpjN1URqThfNz42hCIOydQJEM7Rt/SaSs6ZZvben3cTOcdVpyTcULjX
         j87NF7byWw0RL97pSrwK4DcLAXqX8LdiXCiJNpg4GxSKvQAa4KUwvW+4kxUpHiU5dbWb
         Gwc5qIPug7GuSHmRGSulNvQphgGmnaQfZ0KTH7Cf3Wz8LpA0+aeqxqmX0AlGbJUSD6Ax
         niCi2QNH5MPAzjqXcH66jtbk/5R++YhAERXJjRKhOm0Y/L3awu5BxMLWdMVTVEeM4euF
         mt4A==
X-Forwarded-Encrypted: i=1; AKwUvByUJXjRJwxve+swS9VuYHGbadnhY+ShCt4NL8gUiWgetEEVFZ44IgQPl1mOcSuQ11slsLonobqzkWE=@lists.infradead.org
X-Gm-Message-State: AFuF++lYKWWwWIvMap1WKLrKg/7G3CwuGr30+e3/MJ9lMv3udt8HQPSd
	qGnRznYX7fdDVE1e0R9QHG+4yrUd1S1DTK8HoVF10uLFDJ0WTbScSDyixPrKnDUMx1W0BaqFikO
	fs3f1J5fArcNN+kuB8NjY3APPqEb/WVvzLtMeXMHO/9hUwBkeHCX+HJ7zhqaRc052ZeSCRU5e3q
	vO
X-Gm-Gg: AYBFou2WeWeqerkjlOixRJd4O27bBe0cb7v5hSzlBpaHEXnZhB9Wgjc55/NAqMz7/HF
	Eae/kIT/6CajHnWMmL2MJE13FanMa1Ps0o9or6abtmwPbShg+IMFrBaF4MnBm+EFQGS3INiVCO7
	1aQqQT+2TqJqsL0JzCqAxSc9K04zlehCWGfdXHk1hR1TJ12Q7kEaTWjlrN4X4f1n3v50sKhIJhL
	qdY/vCI6oi1AF/97PtgP4bgLMIuvSA5TwBLgB1lP28Y1BPFLyP95yAfT4BKu1FcrKlz2JeWAOkM
	VQiU1xPgy6nM+NxURKk8EAfGwNbKaBj7JyBkIHgcUorY7HDiUrdEAuFMvPKQrUJ64PK2dhrQbG+
	1WMgTq2sVF3tG7iwCkTINbrqlTw==
X-Received: by 2002:a17:90b:5287:b0:398:9bd5:490d with SMTP id 98e67ed59e1d1-39d9c22e224mr8967258a91.20.1789145257199;
        Fri, 11 Sep 2026 09:47:37 -0700 (PDT)
X-Received: by 2002:a17:90b:5287:b0:398:9bd5:490d with SMTP id 98e67ed59e1d1-39d9c22e224mr8967200a91.20.1789145256741;
        Fri, 11 Sep 2026 09:47:36 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39da64d4bdfsm944193a91.0.2026.09.11.09.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 09:47:36 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 22:17:06 +0530
Subject: [PATCH 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS
 controller
MIME-Version: 1.0
Message-Id: <20260911-glymur_ufs_qcb_enablement-v1-2-b9fc5e2ee99a@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789145236; l=1348;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=nVeQof90N9/+rn0tz6Y5h6juwjIaGy0PYkqqWpXw4xY=;
 b=QnYHneeV9+kW1ROf5mDkfh/qHaTMW+7cpvw79FXnUfjg6WKLDqWbGEfXyTQNv5/QalqHBFloi
 lnGigFGogtsBtUzK4jB2uGc/GQkzYdQRUUoXpZmvhohD6OrAMiuqxv9
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-GUID: Wa9-y-4URXS2M-eFEkMuqLYvJ3aFa408
X-Proofpoint-ORIG-GUID: Wa9-y-4URXS2M-eFEkMuqLYvJ3aFa408
X-Authority-Analysis: v=2.4 cv=dakVTnXe c=1 sm=1 tr=0 ts=6aa430ab cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=Fvqz0uoX0QqgC4h9zMkA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX7/ynftxqsBjv
 rM1ZIYWpjFz1WHBkL2dzTkgIE3JsqwuSl+wNbPMiEQNdKzFSK0v4XBBhJY517kO3jVY17ejZXij
 XNcXMGU5EkWWfKM7L/pLvTNXnmDkERQR4DPDk1lAdSDOyksEThEYdQsu5okYxNhZBFfy/tRd0TL
 nv7/vpNLjmOczE7od1mWpBEO4YFhwAIG3Fx8ZkI6A1ZWlXmTZzzimdR/wT7wvM7dZn6z4MEILzy
 RWE9nKCw58rGeQcMNYU8AR5kGmjwkkDDL7intF8zhdvQHMLboIesIn7capnpGe6ekS5Tnziv0DU
 ud+jQKDuZGJ9Xaj/ena2rUPvGqIsFSHPM78i7NaF0vtNpnjmjGaLY7snh9DELSyXHwqmqJrkN1k
 /QxPeYMikNT456031TOh37E4i4vJ0B8PjM/J+7r/bC+Tdw71+r0NbtZ8pyQvps/BbkzfIcsEwJU
 sPi3UO/uVvYwwfYRDug==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX/owk0zOIYHqS
 PETf6r0VwSHGHv6DqNOjUmAfmhTk4NhnCxLUTGk8FO6kJC9o59yIxgNJ/2RFQD5PGFzMRanuC+5
 p1T1egmPzoswi6m5zWUKH/S7ynNlhRE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_094739_881693_164B386C 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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

Document UFS Host Controller on Glymur SoC. Glymur UFSHC has a
multi-queue command (MCQ) register range in addition to the standard
one. So, both reg entries are required.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
index d03295806657..f132b1a9ebc2 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
@@ -16,6 +16,7 @@ select:
       contains:
         enum:
           - qcom,eliza-ufshc
+          - qcom,glymur-ufshc
           - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,maili-ufshc
@@ -30,6 +31,7 @@ properties:
     items:
       - enum:
           - qcom,eliza-ufshc
+          - qcom,glymur-ufshc
           - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,maili-ufshc
@@ -80,6 +82,7 @@ allOf:
           contains:
             enum:
               - qcom,eliza-ufshc
+              - qcom,glymur-ufshc
               - qcom,maili-ufshc
               - qcom,nord-ufshc
     then:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
