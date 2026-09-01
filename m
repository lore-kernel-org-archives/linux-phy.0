Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE851C624CF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 09:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bBTpig0pMtL+Qqv2d3HnwCRlDqyCCw38pHH464t4T8=; b=qhNmyXnS3VY7HR
	MhY1Wap7jAd0RCym382puyDYzj9ZNC5yOZpYe7S/ZseEQ7QHsf0QuOLXK1W95j545JlZXmcR82FiB
	uNtpFvYbFg2v14A2XDQwIUMRUg0J/dVCOwIBA/6so09US+rZJfzq7ZY42J6uZ0V0QL5Rujp07euB+
	Pv26CXldSX5HyO4qoAun3vCXymIsJjjqS8Soz8+OPZN+jATuYg5mfzeK7EzS1rxvgKMdbsPwv4q5Q
	0xgXrHsUFk+Rx/mGTiORR7ejO089NwQ3Sf6rgVV81pC2RRgNlM3JXyRK0dAM7HowYPy1gmQdVLGza
	G65bKxgbI4Lxcx3TPztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9O-0000000BTch-1Vr3;
	Tue, 01 Sep 2026 09:51:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9M-0000000BTbt-1Yc9
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 09:51:29 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68179CCi2061566
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 09:51:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Jb50+pYjwgA
	TQrbLAr/ZmgQJVjW8TG6fm693bt3UZ/I=; b=QZGq4Hqc4YPyRrfbLWdCcXuOA8k
	CdC1cva4qKtMD7gPP5Z5vyeEmXphN/AisMVePoDd60mOuhK3gQqevGi0XoGdgWC6
	/GuH+rqM2EhBiGKMa7wsRx3akHcSnJcZwFhG24P5Y0dKt/ohP8bAnKu4g5GzO/fQ
	XrfQOqtkfNZrsdnvKHtqJOt8PkbkzVPfJmg2L89XUm+BB4i+I4dH4i1zFX+uK2w0
	SWughQsGEK0h9hjQS0h/vbVREiFDJ1iZaW4Ux82TCeNgTfyxIymsUQa40i8fEKCn
	toRUmTnP1TY0SgpngHFqXjyXo8egpSybDKAu1ImzxQXgB4YnJyVGzMhJT8A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdqbh1djp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 09:51:27 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2d7151120d6so22988765ad.3
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 02:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788256286; x=1788861086; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Jb50+pYjwgATQrbLAr/ZmgQJVjW8TG6fm693bt3UZ/I=;
        b=BrTQRmfXKHmPkk2UdJsOzIvYjpEd1+CseyYW1oi5I/4wRizssARKfqnfGsjCVtbk+H
         vlmheeUG13hOogsfogQ8idRcbn71aPqkmpWcAmlshFGhJj3aaHwIVm9nZPCo98LjN05i
         YInp67mZ83iyiY9JK6BXJnc+otFZmlSl1h3qnXJjeAOwQdXRcUtNGn92+fyfwUpDzTpg
         An0k6rsc2ZUiGESGkdK9+yphFTvFk7qMc4RnPNGgdRoQ2HBMUhKbGLv4Oi08Ro4oJpqd
         Sl03YxgZiukLudBsLMQU17f8StFRtyJg/Vp314zbQ6Bjn9HQNNTKeAPzNFuWvtjJ7RYd
         wGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788256286; x=1788861086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Jb50+pYjwgATQrbLAr/ZmgQJVjW8TG6fm693bt3UZ/I=;
        b=PcL1IUZxy2zt4HZctyi/Ah1boZXtEQi/RsB1l23gDicu8ppWD44Vt0QvnlizEVGaud
         dBxwWs1LMCJftIqrpb2/+aYm5GQKHnGesqRTboFNHZNQHZVN5YLnX2/M40ihB5rJViUT
         rtMbvSbpVZtngEYMaj7jqw/i9BJt6IZvrTCKw+lVmY69wwrFDVf/ODpAIdKrua8FlAnh
         ZDgXsh9BfRElCuFv1kuXgqPidYeKaOfsY+B5e+bv9WsRoSPaQ+5XVU9q47kfcsDfYyGN
         1BtM846l8S0iM/xnBOxuVOOOgIQ7W90bY8v1QBxwHaBKPQhOGVtI3Kq/ZBhweVNo/XOl
         Wx3w==
X-Forwarded-Encrypted: i=1; AHgh+RrmpDMHoLjWrO2NgfuFV8hgb4s8ljUsCUg89AA7DqxqfxTTJ/twhyGS7mNPXi7OynruBb1AbTHagIc=@lists.infradead.org
X-Gm-Message-State: AFuF++ltosHjXdH3BdXBTTTHFywoythGlxUe478TM4Nt5ExgJCNTaqg6
	Jv0jSK5GCY53E5M/9cnUtO4Ai2jcogU0vQ9eiV9yAVetxPPS0oihGjV+05SCvaazEadkCjm1x8n
	CngiiDQGFuECiYaaIctQaJEW+bC6zdMCsbYFzEZrA1eQt/n8RoqUvcXwCUiNXxJlWdW9IhrYjaN
	uZhuM=
X-Gm-Gg: AYBFou2dRrK8ioaacqqQeDwt3/skcCH5208YdgX2vwXy4a6i/hwpQoKbq1dyPAgQj4o
	wHPkBC1M/e7Ogb4L71WtHd4L3ypnrIImNo9/KQexSV8TjxZMLDWOOzerDoevGCklHyzWmQ+cDFB
	jshaofyaFCyEh2m8f7PeiM+dlK2b6yWbpkA6ZBVNluEU0CICK8ZsG7koTYJoZwP27SamufqNMA8
	fAtuyG9AREEimxRFFXzsotc8GcQDHWX73qeJ3GF2OeZMcRUy+KUju9dPbRWMOogJhugXMXbpaMy
	WZspNr2yicPvWzRj0EHdWWv/R6E61B6kCjX5nrPGazj4AllTObl7JKMLJtTNri8VS1PK30+j9sh
	fu8Z8Iq4W4XT3/51XVi7MfPvSwlImCTdT9CVDxLcastaYXcff8q55VHkhLw9X
X-Received: by 2002:a17:903:1848:b0:2d8:d4d1:313d with SMTP id d9443c01a7336-2d94a96836cmr113814905ad.20.1788256286441;
        Tue, 01 Sep 2026 02:51:26 -0700 (PDT)
X-Received: by 2002:a17:903:1848:b0:2d8:d4d1:313d with SMTP id d9443c01a7336-2d94a96836cmr113813925ad.20.1788256285941;
        Tue, 01 Sep 2026 02:51:25 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa37fa5sm40641466eec.29.2026.09.01.02.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 02:51:25 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 2/4] dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY
Date: Tue,  1 Sep 2026 17:50:53 +0800
Message-ID: <20260901095055.42229-3-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfX8SRNACFtMzqW
 D0uUiGAld05280mV+Lof3JyRMZNrAF1moEPuUm5SweFNNalwvrxtVOl02BTaoEyR9yGe37xhMMV
 qDcP77E0+1AjyiyyRCoV+dKtCBIzM2o=
X-Authority-Analysis: v=2.4 cv=R9wz39RX c=1 sm=1 tr=0 ts=6a96a01f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=aaKdBBw8xNbH9Tj6BHYA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: MG5OiJm9-6DJlFuLqdiClkWMWnTBC8b-
X-Proofpoint-ORIG-GUID: MG5OiJm9-6DJlFuLqdiClkWMWnTBC8b-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfXz9OXKbnhq3RM
 KZGrq9iHbryf10mNj8SJg+JG1rC/I6oNoKyY5cgmatON0XVQ5qlq9DM2r++9HVsGQVj+XHZgTnC
 2ZhRd29NJaIWN/Dsw5zvBDuXjmCThSMujWaHiuC8CB/NzpLHXMc0lGZS8zC4SDsMpk7put/MIZ+
 ELbVmVGCm97Lz4XIPGf6f1sl5VvqpxERsj1QhwqsZHI0jf3b3akxe041pVot+MrGsIqo8Aq3QFr
 QNht7tG2YTJOdwatiSsN/kUBziHD90LK9LAvbIaF3TQkFoX7YDRnO/AKeXvbgJ5g+ZGbjubZhC2
 V7niTemZ+TQZMGARb4bfcLwckzu8z7Nf+sTMC9FjqRraD38JmSeMRlaLP3Mgmg+jVV6iGQIEB0w
 mXL03or4SRrxeVKueFoCbJdEOog8RDv6j+YzXQmLZKXmaTFVSG7H4WZX1fioHV+K8mSORRaW3Mn
 fuw9TvB0ZDJSfcadTqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_02,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609010086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_025128_528034_AB18BDD7 
X-CRM114-Status: GOOD (  12.46  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Add a compatible for the eUSB2 PHY found on the Qualcomm Nord SoC.
It is compatible with the sm8550 eUSB2 PHY.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 2140482c8e3b..7fe8c82db38d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,eliza-snps-eusb2-phy
               - qcom,milos-snps-eusb2-phy
+              - qcom,nord-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
