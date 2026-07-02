Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60676C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 11:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=In8cw6LO0YvXG9jYZ6WnRmjgQ3nvySL0uNzL7Y7dOII=; b=rjKrzdJsHSCTWu
	B50SBRcN8aF3CSCMyDWDBBaqlDM3wKnhbjouEtgjh/hkwBG6NwBkJ3Cz5eeubbx2JGkuGVI1p8yf3
	WozkfFim9rzN19RAleM8E7kv53Fw4XM2sg1OHwecjC0P0MFCMTFdYciWNPA3AIZ/MKvF9iQZD10oG
	bT2ToV6i3f2ZG5VhrhHKtOFekqh43ZQp9Itp4vzf0lBcH2mx3+pOBV3Nw/WIe3vIzN0cqEFlJ55kq
	1CwjijXQ7sFM38oS+oz/PnHwK/ZXrqOpvyCw+z+m07kIJHhoPwiU8o6lmYyJCC6qiEq+I4HX/AIFX
	3uVP+rmnj0UOZAfmo6eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfFmR-00000004LBz-41kz;
	Thu, 02 Jul 2026 11:40:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfFmP-00000004LBJ-2M0m
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 11:40:30 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6629KXnG4115790
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 11:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=H3bu6ibEoY59IRv78b5wDQ
	5NOOSP9WSl7ibhdDRfAJQ=; b=B7ruyB3QnbJPwwy/h9HfuezV1cbidsC0jz0FOe
	qbj2aCE0952bVNrYqHZB94NF6yNMDIwVO0sq5j2G+sTAvRb4qmeqKSCc5KEDk5Xz
	x/3/4APNZMUn/1/AiZXW+Ae2VlhC0/kpsTBl8Xx0jCFENuVgwvJv7hTg8faZWtcW
	vvFC+85Bp6byD2elqzIX7zLEfmTJjiHQMzyeeYTa3C4cTx90jwDtrLU0UT0H+Sql
	Jac1m5Xu5Lk5cJLU4roX6WshC6xzRE0vmVznd8spwDE/jJZM0OeG5Q7JVdaQONpm
	U3E05qiIqg2+9dGgpHgqJIfyqhJpNn/HuPAbCfiMaI38RkAg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5n940h0f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 11:40:28 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5bd6f09f03aso1680071e0c.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 04:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782992428; x=1783597228; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H3bu6ibEoY59IRv78b5wDQ5NOOSP9WSl7ibhdDRfAJQ=;
        b=E1+6jNcdkO5MSNDdNwAVwKNf3sD5jwuoE4rxLa8tZDvw4iyd2+idI0PC6z8PO0AlZl
         VIvRVwxl1PMoCYnMLS2xzCs5BXhIjc6KJ31xlIaerhItJ6mW5LByW6pyNyXLwF7buVFQ
         yQNIGTWe1gafPs2aRNBnnbsMju7nr2ENv/1SYsXS+jTksOcESOmin5CIpUiAXtlk4l+N
         Wmr7W1FlCcAhTXLZHSTRuv5g+gkHwEH+GUn+kp2//8Yx6NhvC5HusO7nOhmc9+TCL9IM
         gZ2d7tsuQgxfM8f2dlRGtj3+BVZAPr/oVep0rlztQLPxSnB4Ky+7/bJUarf4WlITAIDE
         VWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782992428; x=1783597228;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H3bu6ibEoY59IRv78b5wDQ5NOOSP9WSl7ibhdDRfAJQ=;
        b=aGyHsxqD5lUOKp94I+imB8QN0IoRpoDB/Cc/zFwirKz9Pjo+4qjVzhhMhJkSUw43LA
         A+YLrUxw8fJBZnSvchrOEX/4eWZBoYH2x98FJWrLWrJHt2lriohUS8tJrXd846QoPGpm
         9niMdkqhixs67g6qImmBrN4bn4nkMtwNQKVslXvhvHDgOVYQpDC9cMpeUhJldabLyaD4
         R37tTml7l4PQCfBg9cUa7J9gH3y5HlQV7i/2wqq+lcdpeAueKuzal2ZZOGxpq7v6ts2I
         QSQ94JDWBavtU8/hJ+c/3NOjRgAnsxGrKszgWzCipUQ73LIBDar6fEB5W1/vQG6G2UqD
         1XCQ==
X-Forwarded-Encrypted: i=1; AHgh+RoCqNK3lDFBD9lxIxUr5QM2ESu+Q48Q6pUEZLnVA7O9VYSZhsHkZJK2XAgdF/muPIb1jfB1CP2MsOY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLnca/OTW/WPAwYgZLVkdlaE+VYI/y6sOaRJAtO4SkgItRzIGP
	zhBi749Ax6VWMiRW/ypLn4uBh3IA33n0FeEo17kL8Xi0UcAeAPJTyENo0jKcjzEsJqHfYRSVE3d
	95G2vCsuUBfc6ILYlpbNZQiNHN9JSs8w06xQ13T74isSnB/UCixPZ9ui9tGvug0FHpv9j
X-Gm-Gg: AfdE7cmbWOL3tuw5gcA1BiKDrNw3zGytVPwlkt69RKWJrhgDYnjcTUvH6Y3WondVggs
	ju1PJDTYZwbN9X9qBtliDcNarNx+LmZnKkRNDMMW8RfOS+m2wThvC+KoNQgJpdDrH1vsmh2rQFA
	Wbi/O5o2NWjo0vcGZoxY/mbyHJ7Lnj3hlGg6iU4SY0YyA4o9f+QipTC1t8XpyBT2jsLnPyamr4p
	m3ifIydhLjY7zQRwNzF2NPJf5PxcUgy14/eyi0ZnI4JwsfW0xM6E/ZJ8JRTM8sU4xDu4hINLzQq
	347zS4e4MLaVVx98d6LOqUiHor4UUb6+NczhUdUq0yK1s8oIFSblFW0TK8XqHrIzst9CI5qyEWz
	aZakSoglFcLQVC5p0Decpf26cg9pD3dOpmVwNsIWafzKvX8nuvSx97nRv2/nE3pVbe9Y6ljhRyy
	Njos90xrqfORT12bm2vzevCCb+
X-Received: by 2002:a05:6122:1309:b0:5bd:73b5:6d2b with SMTP id 71dfb90a1353d-5bddf5b6d8amr2563807e0c.8.1782992427997;
        Thu, 02 Jul 2026 04:40:27 -0700 (PDT)
X-Received: by 2002:a05:6122:1309:b0:5bd:73b5:6d2b with SMTP id 71dfb90a1353d-5bddf5b6d8amr2563794e0c.8.1782992427435;
        Thu, 02 Jul 2026 04:40:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec8991affsm626240e87.13.2026.07.02.04.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 04:40:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/2] phy: qcom-qusb2: sort out register layouts
Date: Thu, 02 Jul 2026 14:40:24 +0300
Message-Id: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAChORmoC/yXMyw5AMBCF4VeRWWsyKirxKmLR1mAsXDqIRLy7Y
 vnlnPwXCAUmgSq5INDBwvMUkaUJ+MFOPSluo0GjNliiVh2fat3FaZUbRGsK13lLEP9LoDh+rbr
 5LbsbyW9vAO77AZW5HzdtAAAA
X-Change-ID: 20260702-fix-qusb2-3600a65bfcae
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=886;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rxVj/vvwaxds35WEArKsMNNovFjxZLBmNDBIcqLcnFs=;
 b=kA0DAAoBizyKPgIpKNUByyZiAGpGTinIF1Qw9izBuGbEvkWm51dtSBA8RnzoByrsga8TnWL3D
 4kBMwQAAQoAHRYhBExwhJVcsmNW8LiVf4s8ij4CKSjVBQJqRk4pAAoJEIs8ij4CKSjVDHcH/RN8
 4Tun6Rh92Cl6FkNNzqXwnTCrD7IYsLaac9g6udPy0Pigp1xHYCGG1o5Dh/SwFGr3b6fWVfnk6Ha
 SX83sqcNHxubyEBE5swqsYXVzwWk1DX2dbE/5bfmDXn8YmZWt0ulVSCG+57pZV7menw7cYZrUpK
 Dmt+iCjP30UrHJQTcjNFuVNC7pjmqSluOPTDHvmWveD+BglqeLRw8UB7kAAUl6QrD+FdG03gCc2
 uC/tCVqg9mpwWo8p8nAOWgQ8jkYg25BlzDPyQoxwwH+rf8mjtMptgXdeINk8EitavchDR7Fgswa
 dzbfMQsrdIGESnoV6JTwldwuQFgXQ7gUyI8tY1w=
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyMSBTYWx0ZWRfX1uArcK/06M0K
 sjonARE02WB1wqYIDRT3SxioVD5sW2nYYZYzHqsY1BG0wkS3PUIRvMPyLtX86OKwaVuQjh2nDBr
 6vUQiFRpZfEgTTRLhn9w5hOE0Eg5er5hQbMxzOHk3eaHkVR8p+7G1IxgD7/qBNRuJuKA+cuFbKR
 IB7pZFX315DfuTaUUHXt+yMiQ1SJLaeYe/zteW2xwhBBMrcXzaJEHxIMWYG4RXiA3CjfHQV+WaN
 mH0kfc/omE1MtaByVxLyldpKoNGZv+FibndEaDtLkS8jHglRe1pWpIGAkO5ASnAAlK7vuBqTO3P
 aPozrGEuz9rW6a0S+5JeEOCgy5LzeiRSeiy3JA02g6CcSnl4Rxnaq8wIMitwyCLIAEjrVXFjHKq
 fuW9c1Ej7tW9ilD7OqbHrQzPl6/G/G68tmI6TnQ4hKdgdif0AsD/fTLj6+0/UqyEewKi2L3tGjl
 2BwTKRRveFKGeGo3T+Q==
X-Authority-Analysis: v=2.4 cv=Lv+iDHdc c=1 sm=1 tr=0 ts=6a464e2c cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=6aVneB7_WHSjWlUXUrYA:9 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: K7wZRGsdGDxhnXusnJQ7O6OxnYCV4oRV
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyMSBTYWx0ZWRfX4WeXR87902Cr
 /RfqL8ru+mXd0nuCkC74t09VL5wn+SLnKEOqU+uJZj6KEWly1Z4w0EhxYVojEWqwelagkFbJiTL
 0as9Ax77GzK9UVXIChsEjhzAKisK61g=
X-Proofpoint-GUID: K7wZRGsdGDxhnXusnJQ7O6OxnYCV4oRV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_044029_630286_73974066 
X-CRM114-Status: UNSURE (   9.29  )
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
Dmitry Baryshkov (2):
      phy: qcom-qusb2: don't unrelated bits if autoresume is not used
      phy: qcom-qusb2: fix autoresume handling

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 44 +++++++++++++++++------------------
 1 file changed, 21 insertions(+), 23 deletions(-)
---
base-commit: be5c93fa674f0fc3c8f359c2143abce6bbb422e6
change-id: 20260702-fix-qusb2-3600a65bfcae

Best regards,
--  
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
