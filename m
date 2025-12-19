Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBAB9D7879F
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 17:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U1mPj/PrSCLTpJvp9ZA0WEdml3Cuggka/EPPFD5HNuo=; b=oBI+SbFfip7aC6
	0VQ4yLVWl0GBE0uZLRM0VfrMB0OsOd8TCIDMf8gchsmI98+wdvfVW6781AW7hX+FGZgYZm38rWxsS
	fg36LHisnHDgoofEx3suc0eqqITvF9fBzK1QC7b1+uXZuLJi98/AToza5Tm7poegWxQufl/BQ0FMl
	ykfd6hMjQ8/9mQd7yykz2+xYzbrqF8puyKwLlF/lV/o38HUB0KylY5RpbcFTglTENIMcnF5v2LaTq
	JhtLUQjKuw2oMq5Ku0YnX91X45HAhIYIZmjEZc3WDLKHtBIMGWR0g7x5WEJ1Npfmtwcw3Kydf/fVd
	C6xD/bpxiwrJCQauRM/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeK4-0000000AiPJ-0PG8;
	Fri, 19 Dec 2025 17:31:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeK1-0000000AiOt-2mRH
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 17:31:23 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjT7n1684395
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iLH/xGXJYE4dm1dXzU/3wtyAAdQ6aQMf9Th
	AQsy6JaU=; b=nbRJthbKf17XYKWVMbTOx/S15cxdmHSyfAer8Iy45TR/7bFo7+L
	m1WZh9BFaKfzd6qV8dPej9VNYrolxnG+jsdA+58Yt8T/n3oQycmLXMygKldtxLrU
	4d9l0D6kxC1VxmyAPw+jFWoaN8Mz5DpWuplo0HmFEf+nR0EGNZKUfrNpAe7gNA40
	N08PmdhWSJCFj2Hn4DdMGRTaY98ndsI0CP6giWk9DX2t5IOkPP5YtYc+UxHr07yd
	yf96juT5lL7Pv1c4GtLz22TwkZ42/2b7IDY1p4NdUtq5ETyhp827Xg1xHaQi2DUb
	vUuhysCL8FILFeFZQ7bc21cUI6PDRkxfopg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2fkejy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:20 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a31087af17so632005ad.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 09:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165479; x=1766770279; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iLH/xGXJYE4dm1dXzU/3wtyAAdQ6aQMf9ThAQsy6JaU=;
        b=Audegv9bLi31+9Ws5idoqfDJyFHy7TwwZfBgWHdpBuYEExensxzwzVrDYh7mUuTLIw
         vSI/pb+DylmQjadS7JQjZhVfw7MqlnpLZ3LBBM6TG4zBD7ZC3txYz4ILzCgnbld5jiqr
         u1TuBEpgRjDegNff/OePrFrX7LiJY733ijyDnGjcyuGAi5z8Bmg61m7bRFw0qOhfZ1R9
         iz3eZhWjinBGa1otJCyQkWeWf86k0/zAH/lCzgy9NG1ea228+B/bpMtRXQ7VN9pMFHn7
         FcDO/VbORHzvJN9PncLOZ6PU4lU8dErvKysZMEAdHfewG4v9PwAHPfzRT5pLx3OncKzM
         nKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165479; x=1766770279;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLH/xGXJYE4dm1dXzU/3wtyAAdQ6aQMf9ThAQsy6JaU=;
        b=SF8+Tv7EyRQNOpYX0wAgAw9qT1NhAcSGC4cKRXuEpuwOW/MWQHtPqFa5QJ1sycTaxx
         VS1DHZWXrWfSh8jrjA2Q+IuvJqczId0slgfp/XXigAJ7WGmvJ8Aa4BpLZnn+2fdjW50t
         fsVtK+JVsvrnYctJSs57ZvEA3pZmgeyYUbhASiCtbSx7jz0S1d01cM+ySe+CF1jnkFn1
         pEkMH9uKiExgcqOGyZ8XedeyoLCZz92iEPLTt6wGd3OVo3g9Yn6hEtFW2W4q2wbHVyQu
         joHnZjXWacs8ieGmBd5LQMRHPug8V7YGVk/iVwGZwS5IVdKOaTT68AvAf8DDMhQ0qCiO
         0BlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLG/tdNNvHzL03z5Rd4OkrGKlyv+l8xPe/ZLAJpjbAbWEsmXzrf3DCoAj5Due83audJzqb+O08VIw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4wNX1pI54imhGxSrV9az1gQiYhI0QY0sJMaXa5pl67tUB+zRz
	qtTZobjrhUwHjUFn9tcVJIW1fMh2lgKy4lDn1nwjfOo7XEnvRixfoZp3mN3G8u3r5wA5ZPQMF5R
	olodh5JTMhEFgDiZvLx+k0uVLuGE6J8hWpxZGYZwYyGL+aWGuAKTttwC4/2w7Pdi9H9bM
X-Gm-Gg: AY/fxX4gKBrjsZmDafBB6GTip5u4ArTyFzh0rdbfep58EzK9jOMkpGZnOBQPjLyR0MX
	0N6mJ5PFtBeIZCBcTargQcWr8hKENnqwbj95WvrTXRTaUEJK+Z2TcjFgqw47Za8DaFkss/+JeHx
	a7H05YAMc+hU/Pa6kIbWqowPHJ56pweIN7DYB8X2Tsmn8RIYViurC1GjcFVKXlfKsK6egf+4BBP
	2yrmitAl4Ya7tUEKV3aFMr5TShFnWLqBlhPAYbYgUzyxRFbj/hc+N8ok9QUvzUJzkVfYuSMIWJr
	NtAaVjl1A2jZ3U7bdnu5Rc5xSnl4+sjYuyFtSAxc+NLzajLNKM5zwz866blL9Ogp7++NCpnxUcp
	S64+6N/90KddXEYV48qGBk+n68dVvCkNnU9mu+0hhfRpuEJs=
X-Received: by 2002:a17:903:1a68:b0:297:c0f0:42b3 with SMTP id d9443c01a7336-2a2f24228eemr35203975ad.25.1766165478986;
        Fri, 19 Dec 2025 09:31:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdnWXBjQ3S6HbkA5gNaY2q/0KnJV7Rbq57BCYvX238UsSrNgsmFJk7o/zFtVRutMEF5dWHaw==
X-Received: by 2002:a17:903:1a68:b0:297:c0f0:42b3 with SMTP id d9443c01a7336-2a2f24228eemr35203605ad.25.1766165478454;
        Fri, 19 Dec 2025 09:31:18 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:17 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Add eusb2 repeater squelch detect parameter override
Date: Fri, 19 Dec 2025 23:01:05 +0530
Message-Id: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=NODYOk6g c=1 sm=1 tr=0 ts=69458be8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Jj6nKQW2Xfz6pTaCyaAA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: rl4JJTL2g3N7o4cEd2JqIOBOsuE8MROh
X-Proofpoint-GUID: rl4JJTL2g3N7o4cEd2JqIOBOsuE8MROh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfXwYVJVK+gjf7p
 LL9AIAu4ucqGIgdNDSGTXAAoU4s1vIl9VIs1LzwFnyadRMUMut4DwTNImsNiWh7PjxR1XBUpPx1
 4qECrMJ+Y1cFu48IS7wqvg7xAgiO7mCQr/PYLYjFt2+8/sQNrs6vDzWKJEFsS1GstDzCp7268qv
 R1HYk3Gy2FcCVOjTWWJv8qMdHJ2WKemixdZbH/8693ZD/d3uhFIXNNwfJ6tgp13F2JVaWjCe3rk
 h/qqd/TfEMuvk3JC02V1LuJClrzwKKe2HQxNfqLIKEG0PJuTdGnxI4/yh5fuLw+FhnshwVYe2He
 xBaXhDqRH8JZiWqumzOZaRa+MqFEP2po4qSSqqy+HfzEEVPfgLBovr5MFconfZDWa4wfe+MlR4/
 sC6zJ5LBBSMrN6eXZgOFCmSigYaalibm1lSJm2VJhsEIExUVc+35SuO3benatFdxZcMjW38KHYc
 MOI3uGmQqVSHS3ANigw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_093121_842205_CA0776F1 
X-CRM114-Status: GOOD (  10.68  )
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

Add support for eusb2 repeater squelch detect parameter override via DT.

Squelch detect parameter adjusts the voltage level for the threshold used
to detect valid high-speed data.

Changes in v3:
- Moved status property to end of repeater node.
- Updated commit text as per comments received in bindings patch.
- Retained Krzysztof and Abel RB tags (since its upating commit text adding
  information in bindings code and moving status property in dt code)

Link to v2:
https://lore.kernel.org/all/20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Modified logic to write to squelch related register in driver code
- Added multipleOf property in bindings to reflect values can be multiple
  of 1000.

Link to v1:
https://lore.kernel.org/all/20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (3):
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
  phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param
    update
  arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters

 .../phy/qcom,snps-eusb2-repeater.yaml         |  8 +++++++
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       |  6 ++++-
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
 3 files changed, 35 insertions(+), 1 deletion(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
