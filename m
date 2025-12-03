Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67EA0D116F3
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 08:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoRrxh1EQ03b3QSdZKogL5R4JOrstmhAwtcrqvnQdlw=; b=08uvX6mpItx7yV
	N+4FRuAkH3j/Qo6n3gUYyzTkDEF4mZO2oI0fcQmtwE+Ygdls8dPJTReGR8rK7OmbcO4N+H5lkk4AW
	r7I7vVdZ4RqaaCeNubKdZeQUsQQmYKwI2YYTPXrnHR7APH/JCqQsy5D1CQe3D7yL4ODceHtgX1Xqq
	eCcYngtqBiryQZNZrrFXfMq0FQGtbThNZb/cNR1IqaifBkLSpEfmE/y/uAMOybIpkAny2IIIiBPtt
	GHbgCvKOL1eUTLQs1PAWc3RvgPZsgkAZLh9vRsl+w8mXZ3RriS4BAfQJDmzgRujzeFhOnS0vqZRWT
	bDUPMQ7aP1elLAUKzX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiMF-00000006Jyv-0erz;
	Wed, 03 Dec 2025 08:37:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiMD-00000006JyB-0hvj
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 08:37:06 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B34E53S1427769
	for <linux-phy@lists.infradead.org>; Wed, 3 Dec 2025 08:37:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=s1I+JK7Ehts
	Vkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=; b=bUdRG5ZUbeaIcWGS03roGO6/y95
	6tzz4csS39cxFGjtdhgxkEXpn+KBhkDDVc2rzhrZxP6JP98zGKWz9IaQd+2hkvXj
	lk9kwXnxEXQ+6O/DqKk50i1SSwZNSw37r09mTlX9sA2R4Bth4hLuiZ0bDGfJ8LNO
	heANNYxgA3EGl+6aQ9O84ZMcTPIugJs943/1cvcPyetpJ+WcylzPDfW9iXZQT81R
	AOb0IsILAStw/6Xkz0MiBymGO9Xsg2lSzngO7oJNJQw9zqnZTGDlypICV57B6e3i
	x8vxSg8U2Twu2uZuREuwqO99WEupnS/3vyh5IPfW0JUft1fFMWnKdIhMNfQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ate0jrr2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 08:37:04 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2958a134514so86819085ad.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 00:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764751023; x=1765355823; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=NsuddM48hC2nss/6nyf4XZPFESBO/XA2I4JPuUXR3WvqxUAcgyLKeH5oTuaR3xydQM
         l03iAWyh1Adzh0tcVBKdqrP+YzVw1bRCGVt+t42UY2IIxOk0CcKfpVe9xdOo6FagGz9s
         HqbM16loH8bbVcLm8pjopAQ0hcjug2cf4HelhXkxnSVGEUyGw6SkiFqDUSxA6hVp9DWf
         mbwIC5nIZzDmZaA7jzN4JPKjUo38XPTNmTiko50ul5lfj8RwdwR1wyISjh+yiE4VmguF
         WLHmoxf3b/Zj8z556x+419Gk5Dx0+JsZKnxPAyOwaqqZ49T8ullC2MvB6VDAq5FRVfBw
         rdXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764751023; x=1765355823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=nXgVOryiwBxyENJnNqxdsK/Jopie8ScKkLAZysEDroAp1D8MlxAJqx9QEW3SoDI0C4
         vleyakiyFr4WOERwwQ9HqfHCB32/orMvUfw87WiNUnaLcVdETSDw8sbpIrjnybbkYLts
         caf0SzI5OGSeWset/StN3o2FhMYaLMT6r0mOpfqTQZ0Gqc9h38KYEJlkdE4EXD/J6Afi
         gkopzQHjYTE8fuOc8TN/HeReykjGM2BIFXUKzDkNuDL1XOCPUmrviRyFTtda/tbrZ42J
         LMy/4y/iYiUQagTSBqsMYRzK+KLdCCM0vF9Kz1qc6uNYY5ST22gmY3UqFjI0x8lTcmPR
         hNdA==
X-Forwarded-Encrypted: i=1; AJvYcCUq5e5VKS0ul163ewSPmkuO+6zVuu4T9ygIPibN8LcHLe2n3rff4tXeP21jom+H2+tSjZN2rvq5GSQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6z9IeQcX0MtjgjP8emxpwQuVsiAf9gJbUHNMKHQbMQdheBNto
	SCe7Y/AbA+LTGR5kgtwifrpPl8u2iJVywc0fdybLVyJR47WNmqf8zvwCO0UNOebs7oqm36pkXRP
	eU0qeP9qoQHybx3YUg9XQhZXs5zNIUb5fNwG/xzmX/WvpgSq6mx8bmPUVZEKv+xmsI/Jb
X-Gm-Gg: ASbGnct6jkYsTaw7scf7fi/sbwtWTM0rX9Jrs4V7M9i2xHJ5hq0RoJeTcU2p1dT/5EJ
	lsEVKKYAWHEG1bLbaD9CTW+jf/1MoyyP4Vb7D7luP6jO3LXLJPQE2qgCN+qF1pIBbfvhbNJo0/N
	EOtFkXxe/jfaD7SGZTsiRf9GBjW/cDIcwb7i5qOfLQ5MTqXeFkmkwXUcOHB6SLMGgGcKNKHCCCo
	qILe4i32z1UTVRIF2KUL/jehLfOnVu8W3OzzlDtJw7bK3UFBbKpLRct50gqeWn892DGXknuKepe
	Al988UXmEz4/HjAIKNG5+bzQVCGy68Megj6SDcVXkpKRP6b3pVeVOo6w+fVI44QgsPWJE6X0ICe
	vVUpnL90+SqXnaaV21+aDj6ScljLV9EuY/2ATqRGN633jEck=
X-Received: by 2002:a17:902:ebc7:b0:295:54cb:a8df with SMTP id d9443c01a7336-29d68421e32mr20341395ad.36.1764751023210;
        Wed, 03 Dec 2025 00:37:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHqcQo3FQq17q7z9kTvLBzxRmh4FssFp2WXvF2CQCr/ROBeeRraRE9KHBnL1Z54xJy2ZTvJLg==
X-Received: by 2002:a17:902:ebc7:b0:295:54cb:a8df with SMTP id d9443c01a7336-29d68421e32mr20341095ad.36.1764751022714;
        Wed, 03 Dec 2025 00:37:02 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce41785bsm175707985ad.20.2025.12.03.00.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 00:37:02 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
Date: Wed,  3 Dec 2025 14:06:29 +0530
Message-Id: <20251203083629.2395451-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA2NyBTYWx0ZWRfXxCwRyAvnmH3h
 gybMDLoD4xYEjj+OBc/7sgV6c1xJjDFySBiMD3u/qkn4Tv/WwxOsBg0kI4cQcxDSQVA8O24/jkr
 yUw1e6RXARiaz81qcrwUf8UEEMNxb824oYoD+/xVW2hu7MboZkAEwVuqBQmKQQbVCjNCRUTA+30
 mvKJbElN520uQSdCXw50tPb979k/9fuHWUax0j/2ejT0bAc5SyoAfxmfEsqwTtRof89UW5IIWA2
 0abK/F4Vti4imdXTvhw3NfGuzZ3VhWj0qkzKdlJJLz0q3fzH3tAhSU9m/w4T8yKM9p+1eH/J9oU
 EYS/Tu42wDYJv/H4hCD5baxcYn7h/IuF/0Jrnbzytgvft9JU7VHvLSDDyYikcQkYeQqOGgIECiJ
 CAo7kkeI6NwEbueUh3IqRoKINqPwpg==
X-Proofpoint-GUID: qnLN2VPmlm_dZWRgx_eb_haHBaUSHlrh
X-Authority-Analysis: v=2.4 cv=cOHtc1eN c=1 sm=1 tr=0 ts=692ff6b0 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-Z-y7UPfJgGHtBsD8n4A:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: qnLN2VPmlm_dZWRgx_eb_haHBaUSHlrh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_003705_354384_06B366C4 
X-CRM114-Status: GOOD (  11.73  )
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

Add eusb2 repeater tuning parameters for MTP platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..b9a4d1c99816 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1041,6 +1041,10 @@ wifi@0 {
 &pmih0108_eusb2_repeater {
 	status = "okay";
 
+	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
+	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
+	qcom,squelch-detector-bp = <(-2000)>;
+
 	vdd18-supply = <&vreg_l15b_1p8>;
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
