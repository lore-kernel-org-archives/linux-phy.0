Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8459C98314
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 06:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ABYqIqQo4aRYXrbHMvX4w/HGGTlTu66ldV7QPLMR9oI=; b=nguXYJRp4VE335
	/ZKa16js6XZ85ef8Ft57xsU+qDLSYxNEVzeXHk3NlXYvrJsVf8vwRO1dWJK4Qc+uYR9KUhqpNhwiG
	qtzRyc6ZmDvBw0bg2mhx2Kkwv9IsMdZlAO0lTS9ueNH37kJ2x9ToTild0E0VsIcCSHkxpaMQe5xwg
	h3wYAdrNHWJ5LzVGScsHpP5ivOgZuQ48QU3IhLmOsbcVU1GRJvzHRsJISYOtDnRsDzc9Ni270/CrP
	bPOxiV9EPOH/fm/v/XkAVwdkWsCL7ALE/+glsI6cqM6g0ChwfI/3sO+amgd9T4WhJPpkRBBFiyhsA
	AB07UQ2EucAxvXWVD8vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cf0-0000000A7av-1Fgp;
	Thu, 24 Sep 2026 06:10:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cew-0000000A7Xc-38iM
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 06:10:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68O5e7Tk772409
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=e55LAaZRA3Zv3Hfwt2jNE+
	aprg9/OGrCXbdEqfdyl9Q=; b=NONLHqm1oIkq1wy9SwavJiPAu55HhdhQ3mK8Um
	PPbwsJMVbmTdJ6EYbctyz4gv5RezHON2OlS0kM7s+Mgd08KbdHeXjzguQNubLuhl
	Rux11PTwQEa8nBN8ZFS/70aqYTTEVm7PzcQ89auYpPq9+SRhur9C/cFdP8Fv+VR6
	Zh8PfNo1/Lrd8kdpUih4Ly5Uw0h+VMzXKZnTkv3Tx3pEorZdspALMlD8mKyicEEG
	8bQuAjUNNvekj9mmNo+5OjSVxbx7/yNgdb/qQa/wYDLFCsYk0n2qRYRYsLx4ENOe
	mS7g73A5DpdsOu78sAaznZD7TZLyQVbUOBWYM+LVCEuL/HRQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvr9098h5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:17 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-14318be7d79so1967949c88.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 23:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790230216; x=1790835016; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=e55LAaZRA3Zv3Hfwt2jNE+aprg9/OGrCXbdEqfdyl9Q=;
        b=FdpStlkYjXv0dJrLfUKd6feccqmD7/QqqgShvrWleQQJ7p4zXq/SLluzB6JL10jPPE
         i3BG7UWIL78/hW/ov04nf53nrLzw2aob9gL2f0uUImEpiTeeUbPxobFi/XVqxc1yHlO6
         pou9bly5RVm7e3vpplhmca8w6WEBDA8VLC8gk7zfTHobhlJHDdeV1ncM1XfmiA2WZPoy
         9h+EY3OrGuyvWOn0dLQc+VxNQ4ib2FddRXC6RGYNMHW5JOx6hY9M+GXc+3atWqaUZ1mJ
         xBxieGtvSsfBsW1f5nCTdL+39GKXAG6JQimuuo6u91X7VhW0Mm0+wpmdJiRt/+7RavW8
         B5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790230216; x=1790835016;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=e55LAaZRA3Zv3Hfwt2jNE+aprg9/OGrCXbdEqfdyl9Q=;
        b=UZtfEpRHQPHHFbeEBQGkCzR1Q0f8tPtnS9wfjKKIoOplgx8T3bDV/QIYzgdMF0WlKc
         yhuoaOFv5Avhq+yPHVGMPj60gaLmaObI0We1viOgGs+v7VjdUl2x1r1biEHsIAojO7RA
         35sLTIHpiOiEw89BRHD5fHwxSdXahNya638Nw6IO58QeP71xd/0J4+68UknnNxgiPgDE
         xFOFXTAL1FA35LAebxsscbZYbqhZIm6gfT98MkEuG538eiGyFRMosVm/G2d1axUzMbRT
         TEYe5g1PHLEvBiQWWk9kvCNJ8I1BmeieutaScUli41jYCpOCLqINd9VydJCV3lm6mEig
         oJhw==
X-Forwarded-Encrypted: i=1; AKwUvBz6AbhSo+EHx8zFAA9Fvuz7CKE/5F7arYutwzTHwz02XJJddxwAqrnQmeWk/qsa0YVue1k6GJu5+dA=@lists.infradead.org
X-Gm-Message-State: AFuF++lOQbDSyqCzttBaqlL5t1OVJRPFa6mK/7L+YwcAGr7ZBqx2OdO0
	VOeoLgJRAKSpjcZ+/vuri7qs+uvrWz7xeG4muAKPFKZuotaxX6t+1iXjIS6BUenFiGYl5nu4axC
	o+Djm9eWtOHCXupOKlV4KjMkFNWYD6QbRXMAbhT5zLSJH4lJQOVbq5lkMENIqpz5KdrXg
X-Gm-Gg: AYBFou3/gJ2FBqkTIrWKdb+St7knmvdZJOWvNS+eTenvYudT7mjKzFfiKg/5D4JR2Ei
	zBLxCRHrbkQz6Q2q3bgzp7GPMzZa3kzfKA819pwUwlFMGdqO0MfQFncpcNnBYOqzpiQuVq6Rztd
	zJt6S4ZMixJrsCLFTH8gJjq3+VZo6igDXUv33tyUJBoakWHSUoSVDh9SY2+SGFFmy/dpGE3Ynb3
	7pqCrsu9TZGKhWE57bD4FsNGyGf+DrBciXyQXWJpxf/Zh250wNJIN/xhJkg0sy007+lUf5Op924
	HL7nEXGa9fUgw16+6jqPgF2W0Ijla3gcZ/LWpXp8K8QFR9zDWfxz95jAWFKQuKd4P/OLke13Xe3
	mgkLu/Ub3124Hm4sRIC6/DrpndIZC+DNaGIY6Z3uTBREv86VB8HzJzNhe/Hc1wN5rUzFhinjdnJ
	r020cHdDVu7dXDOuIh41nCt+OBuw67
X-Received: by 2002:a05:701b:418a:10b0:143:26ed:2dd5 with SMTP id a92af1059eb24-145040b8b30mr1040776c88.31.1790230216251;
        Wed, 23 Sep 2026 23:10:16 -0700 (PDT)
X-Received: by 2002:a05:701b:418a:10b0:143:26ed:2dd5 with SMTP id a92af1059eb24-145040b8b30mr1040749c88.31.1790230215660;
        Wed, 23 Sep 2026 23:10:15 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144f9895c1asm10197680c88.12.2026.09.23.23.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 23:10:15 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v3 0/5] Add support for USB phys in IPQ9650
Date: Thu, 24 Sep 2026 11:40:01 +0530
Message-Id: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALm+tGoC/22Oyw6DIBBFf8WwLgYGteqq/9F0AThWktYHqNEY/
 72ITbrpZpI7mXPubMShNehIGW3E4myc6VofxCUiupHtE6mpfCbAIGM5MNo3K82yBKsUNYMCiL/
 sLdZmCZb748wWh8nLxnNJlHRIdfd+m7GMWlxGGoQFCHIAjXFjZ9fwxcwD8S1MQuHMKaOQXqssl
 wI4U7fOuXiY5Otwxn4EzQw/tGD8RMGjWheiglooruo/6L7vH9Y6sz4JAQAA
X-Change-ID: 20260820-phy-664ed5ec0292
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfXwAHi7JifpMLM
 eWH581OdppI+exQ+I+IyPI/c29TntIup+Yng8SqAo0gmrlMzwlmv0W5si1amdiM2pffARHzVKPn
 pzhuuFqWGgaMcrG2nc3CEihApn+v/QI=
X-Proofpoint-GUID: FiqE9vS1fO07JAW81aUc454zZg2oeR8i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX9EawAJDzPEWv
 CJNMC9uKLrN0fV6bfIWpjwjTeX12+YXpsV4Mkb+jUbPGI46slnPDfCdPCNMt+McazWyMsX/AkSV
 /GLV59d9KWFiwWS3preqlC97kJuN1h9VvZXAEUvEG1KAiqds4jn6aNAIFODm+4kzsZssUGZCBmY
 8kHkCbMUUdG6yYOLdkKQihOBVBTj4UlLevWikfgbUDaDkuC6JAmgYtmTGqpTRFxM6/71Mqz65Id
 R/7T6ZByDo8AGy5zCiwrCczIUhjJBKHi/nqaqxw+j/DfiliAhTN4DlJxD4T8sQBDgAlLtObAfBH
 OV3Yz94QPeBXzs2KOtaB9OWTCES22DhH+ShGxYWRnVAqR8S2BiNaUDT+LghZ8Nx3a/dQmoFosm2
 vknOX49Wf9tmK1ILxMfNe3n/oYkHxeRyAqACSWneQjLBkVJfIXI/WjB05Lz6dp233J3JPr/3YX/
 ogl2tD1YdcDfAqJFihw==
X-Proofpoint-ORIG-GUID: FiqE9vS1fO07JAW81aUc454zZg2oeR8i
X-Authority-Analysis: v=2.4 cv=fMusTpae c=1 sm=1 tr=0 ts=6ab4bec9 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QVgSJ0PFQKcnxtkCEG0A:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-24_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609240026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_231018_800118_E5D612E5 
X-CRM114-Status: GOOD (  12.65  )
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

This series
 - Adds dt-bindings and driver changes for the high speed and super speed
   phys in IPQ9650.
 - IPQ9650 specific init tables to QMP super speed phy driver.
 - The Femto high speed phy driver is refactored to accomodate differences
   in the init sequences between SoCs first and then support for IPQ9650 is
   included.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Changes in v3:
- No code changes
- Rebase to top of tree
- Pick two R-b tags
- Link to v2: https://lore.kernel.org/r/20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com

Changes in v2:
- Pick one R-b from Krzysztof
- Use qcom,ipq9650-usb-hs-phy directly instead of adding a 6nm compatible
  and falling back to it
- Change pre/post to pre_tuning/post_tuning
- Use array count instead of terminating entries
- Fix value/mask mixup in 2 places
- Link to v1: https://lore.kernel.org/r/20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com

---
Varadarajan Narayanan (5):
      dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add IPQ9650 compatible
      phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY configuration
      phy: qcom: snps-femto-v2: Move PHY init registers to config tables
      phy: qcom: snps-femto-v2: Add IPQ9650 support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 118 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 188 +++++++++++++++------
 4 files changed, 263 insertions(+), 47 deletions(-)
---
base-commit: 4d7e75152b01862a4ec598435d79a81c4b254dd6
change-id: 20260820-phy-664ed5ec0292

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
