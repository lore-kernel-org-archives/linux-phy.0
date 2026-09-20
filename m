Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BD7DC982D8
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7EP1v3EwFgtK5ze6A1afbtCo+wNue8kRpeCwSjtITqw=; b=XwFKZbvLLeUSCN
	IPw3MBNpLx3Uz3AZ0BbmJJ8e5T1vp3nUN2R5NXzZ6mpfViAlf5/0yHTneIWPi+p/HbtHmHhQMfOkM
	0mdbe+7Zz6WC7svN9OQn62uygunqsXGCFeFZeKYEUWF+Tbz5fx+7PWJplvYFqQsRlK5kAeel/EfAf
	nCw3wCnhR1pPovOsAzwqw78+TF74wzb6Wf10hM0qqI4GefYG5qE9tOfDcSqzVg35bQd1OyaxewAq/
	4m/XlhnIhiAD0AmFNb9M7abSggxGW2VqyqDhWtp7z6fGb4iVF6RwLxjvCJ4SszQocBCB1wRPoo7se
	OB4DD5EVRzX8EsOpYPew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4f-0000000HX4L-35LJ;
	Sun, 20 Sep 2026 13:59:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4e-0000000HX3k-0mnc
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 13:59:21 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68KBnlY73444405
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ZD2l9pEwB6DB+I/AJudAh2
	5zH9LnaG58yd8EK0sMN0E=; b=nDko0p6pimunjE0TlO9DRXvWLAT2M+Lm8bd2gK
	OhYmCYvahx5Bdn39aN778EduckJ5+gAuFDO/CmMyPUexb0+0L/QSkNm89F5rxGda
	9s//nMOcn1kIpOf/I84LIK78puo3CPbtldfrHLit8Yj80LvrOxhhSUXCrbHbCmE4
	iZys/NV8sqkxV792tkauUcLbNXjnSovgXb845t3MwKsZrKTVFHdPFyNHwTUoXuff
	65gbv4bJM1O7HztpWTkwURer91tpbgETStMY1twujOJNqC+CAE6CmNGEu5yJO5T2
	SbYeqBilnPu/4aaJnc4vtdqSgKCjlTP/c3PltwXxOURWU6Dw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gsg3f3e94-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5329e965ba3so27927571cf.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 06:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789912758; x=1790517558; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=ZD2l9pEwB6DB+I/AJudAh25zH9LnaG58yd8EK0sMN0E=;
        b=KIhspyhgma9uPG4AI/hE3qYNe8p88xLecwnyABdrDYbJsvau9WSNI6ifOal7sK9tPd
         nAxvfi7ms+5AryTWihwrYNrbhZ3HKITqXI+wQpoHaAoE+xb/zCSRXXx2Z7iNbywU9JTD
         ee1XmbSxovQjSMha8GSzs41hDEVy2ZPtE+QxEd0l4gC/bu6VsgijfCj4SX/Zp65VWBzA
         05CmAIvIcolXsqzjrFnlB+fC5+afv1DWTI7akEcwEpZtwqQu7luEo8sWg3xa67EHMXyd
         BFqA507J6m2XSyMgsTRm6PDkLlo1TGLtAycyVLPFI2uFTDHWpfVqWPs/M+z0/P9s440I
         lQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789912758; x=1790517558;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ZD2l9pEwB6DB+I/AJudAh25zH9LnaG58yd8EK0sMN0E=;
        b=NbhamDN9uSdH6xsJywAG826N118eMSL+t09pmySijgx1eP504vziEa/o04witM1593
         LPTSO/hfrTl6RiNM3Y3lk+j3R9qb3F7mDmey+6+nQfRXz/AWBg+g+BH1Xp74SkO94Ttn
         tzHhfWtf2LtO/Mi+50uWm60HLpCJC6BUM1S0vVLpDMXMvAYf6mrp5M5UkIeRAJpqw64A
         Rh0YqijYlYtilqb07svjwqyzfGUZm2JyRsnV1nd899HLZeuZOAeEpmhbH96DrVgRfQaA
         PyQHKLirXnUrJU8pQGDYA+T6Qn0MvSWTckq2XQG7YNQkr80BKneu6JyfUcEn5lXfXi2y
         xjDA==
X-Forwarded-Encrypted: i=1; AKwUvBzau87srzCzQeNu7o2hx3zLnwLpJazgZ5UQI7xbUN/R1sk5d4To+IV/+pKkwgm74CETZiOV/Y/rKOE=@lists.infradead.org
X-Gm-Message-State: AFuF++mOR/XSJuoREs0P94oujPcw1+I2XzqFE/baMS5Spu/E25rRJHj6
	ihcDbWMuJtWtT1MrU52DG3ABke5MbemqayRZ6SAHe7irwr2zrpNZAabcvnzO8RZDiaRyrykSv+P
	SPaavQX8k9o+ivSpUh6KZShtvvdUfFo8fASmsEX066Acfl4oCG3tyzwowD5fT+sl7RV4sMjj2YH
	tr
X-Gm-Gg: AYBFou29yK9yAM7bHJc2kLth6brfwH0vrihF5Yu/NqXYih6W8NLkuTAjKU61lBGyBCf
	kNNqdxN9ySINroil3pRL3zK2RUDt1z3AdUT9N5IUihCYHodAvjV9WECoRh0z1W/mB4IRa00POYW
	JRH8MEGUAPiX8nyEEcnE6LBY1FSE1bfrxE34JgIRgfwqIjVttgIledWcOZX104C7D0C7fIjwHlf
	zkREOHH7luzHXMAFUN6ATxRY2xkw/Li3Zmr7Wfg3N3rFSswbKh55UWuSiMsjULnyjucifgCqqHt
	5/+k1vsfoIvK3/DsBS2LmzNTb1jxvwlqV8sH2wpc6x6iMGfC0QgL99HQdJUbXyKFkXW0xVQJiRE
	Z3K5cI786JCL8B7B0SBGUGc3VzrGGLf/49MoE0eEPQAE7gyX/gvhDCXHMRG7yzugeiWVhxuf14U
	VjfIso02nChJsg
X-Received: by 2002:a05:622a:181d:b0:530:d95b:ea47 with SMTP id d75a77b69052e-532b720383cmr59301781cf.25.1789912758095;
        Sun, 20 Sep 2026 06:59:18 -0700 (PDT)
X-Received: by 2002:a05:622a:181d:b0:530:d95b:ea47 with SMTP id d75a77b69052e-532b720383cmr59301481cf.25.1789912757612;
        Sun, 20 Sep 2026 06:59:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a607678223sm13620541fa.39.2026.09.20.06.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 06:59:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 0/3] phy: qcom-qusb2: sort out register layouts
Date: Sun, 20 Sep 2026 16:59:12 +0300
Message-Id: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALDmr2oC/23NTQ6CMBAF4KuQri1pB1vUlfcwLvqH1AiVFhoN4
 e62uGHBZpKX9/LNjILx1gR0KWbkTbTBuj6F6lAg1Yr+YbDVKSMgwElNADf2g4cpSMAVJ0RwJhs
 lDEr7tzepXK3b/Z/DJJ9GjRnIi9aG0fnv+izSvNtzI8UES6YaxjhQBserC6EcJvFSruvKdFDmI
 2wBvgUgASd9VrquJNWy3gGWZfkB3zT/JvwAAAA=
X-Change-ID: 20260702-fix-qusb2-3600a65bfcae
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1815;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=8ufTlczbQype1yUPrXZx3FbvE3v5McTpVj18fSvYKig=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqr+aymqdqS6JidCXr9caQBTFeIyIiRpO0D3SDi
 36D6DP6IKuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaq/msgAKCRCLPIo+Aiko
 1XxtCACyKgvb+ppDsi/WTFJtiq+BFCATjG+5l+DK3b5oF6PgGGRAHX/kJ3UN5GzRHpCxucOYSe4
 T6xW6wjjLv7H6zk9jLRTor8yWtOC3IIc3IECRZxMsqQBVy8DOvZbse5qV//hXqri/+wTz7V0d5O
 hZRjwBPjKRjqg0t+sMC046YJ4BBy7/VwvoKBnhoKX9poy8sAC5ofYozF8EdCvolml/rO91oredw
 +2nJfheOHqnyPGdIcSwNHouVaiC4KYdY7U5HLMWh5xVNYyJKrYJVkiZs7oagRgMWQIoid3fl7dA
 rTimDcmJL2FeADbzQMtkbd0JVWd4KWI9QJ675NYrN/AUvwWG
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfXwSOwLFKEbAE4
 oiFFFN97NKG7C68YY4tOlUMTSO0tCYppggnzIQS8buLEnh9N/aTrRg0/qrnPFN5vnRhJzMLXpiw
 lFqmUfyvATDO45XJ4OTOVp2Rs2scJ/w=
X-Proofpoint-ORIG-GUID: P_etVZYBouhRI04hF_ld6XmFcb7xAqc5
X-Proofpoint-GUID: P_etVZYBouhRI04hF_ld6XmFcb7xAqc5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfX9xp6WU4r7eQf
 tCYTdL81Zh7CjPof8zcOVC6+WIJrtC7DZ7b1Q58xj9Vumuv0F8tGZrNb/RJC1BF3WMRTD/N6u5C
 xuHBc0muSDHOkc00Af4CAAfORuvmxqzZfR6qhueJVOhMNIgsCCF9ragKZFE0MHeZCXdJf3RN0yr
 153dHvV2x4UyIS7KXlyyUvffg/lXZ2PqgxXSc0l4nHmgMAWO0Y4lyVTYlGiapj07X7W4GghMc2V
 iTvGgjlQx9hSYasqjpQ83w1WLfc1XeVmxYp0iNEUkgVIUwDWcl7PwWJnY/iHmGgX5v3MYw852NV
 0zdQQfNPYbH9/uVQwIC9TbQc7uO9H6YllzbOsMITTRvPDq6yO5Cb3uc81My2RMV9iN117ul8QwR
 IX+KPfmMZYUzXq/aduBng2iKLDhMMK1PdGMUSAQv8kS1ikq5IcpoAysdIMFLqtqYrSuB2gf7o2u
 I2aJCIVi/OUIaz5yX9w==
X-Authority-Analysis: v=2.4 cv=N6S8hG9B c=1 sm=1 tr=0 ts=6aafe6b7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=LpQP-O61AAAA:8 a=JfrnYn6hAAAA:8 a=vLZ8uGs2IYTldnpWfJ0A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22 a=pioyyrs4ZptJ924tMmac:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-20_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 adultscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609200204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_065920_239763_8CA1A320 
X-CRM114-Status: UNSURE (   9.79  )
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

IPQ6018 and MSM8996 use the same register layout, however for historical
reasons ipq6018_regs_layout ended up correctly definig TEST1 register at
0x98 (because platforms using that layout didn't use autoresume), while
msm8996_regs_layout used TEST_CTRL offset (0xb8) for the TEST1 layout
entry. Fix handling of the autoresume register and definitions of those
regs layouts.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v3:
- Rebased on next (Vinod)
- Link to v2: https://patch.msgid.link/20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com

Changes in v2:
- Reworked the series to enable autoresume on Talos
- Moved autoresume description to the regs layout, it is a property of
  the regs rather than a platform.
- Link to v1: https://patch.msgid.link/20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Dmitry Baryshkov <lumag@kernel.org>
To: Kathiravan T <quic_kathirav@quicinc.com>
To: Baruch Siach <baruch@tkos.co.il>
To: Manu Gautam <mgautam@codeaurora.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

---
Dmitry Baryshkov (3):
      phy: qcom-qusb2: enable autoresume on Talos platforms
      phy: qcom-qusb2: correst PHY description for IPQ6018
      phy: qcom-qusb2: describe autoresume bit

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 55 ++++++++++++++++-------------------
 1 file changed, 25 insertions(+), 30 deletions(-)
---
base-commit: 3f2425f5b5bbbdd991ca9cdfd5502e68d8895998
change-id: 20260702-fix-qusb2-3600a65bfcae

Best regards,
--  
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
