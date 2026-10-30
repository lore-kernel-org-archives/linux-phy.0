Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887CB606A320
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 12:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H4glhocA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=W6gj7HQG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=RkiyW0Z6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DVloNUeHOuywjeKsH1ltPiV4X3gW2nj0/bM9VWplgLc=; b=H4glhocAcoJCk/JjqvK9OBskNC
	88XOkVUKPfMFPjbJHaJmrC8DQrGe4hN/q17cOEsgbvgRQUvydNrrtrpF52f//rZL+hJpT1JgdKGgW
	FPU6f3MEPXcJJkP7FaoPT/87WX7MERlEKRNeK885pYTy1H2LSv1FKXfKJsgLcKEwOt7hlIabm2PAw
	Vir/eie7edRCQBTBO1IczaUCMy9ZxvmpjRhATcaq3ArW/a1fKtWDUxoFy2StF/r3Dqm2Oyym+QiRe
	9gJl/BSgdleACV+c+m+OjCNYUya6MTAcNlWzFK+5YjLgZPM+I7LtuQqVqyP1swSlNySFS7YWQO/ia
	SJL8Bc0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlxE-0000000Bh9u-1Enl;
	Fri, 30 Oct 2026 12:43:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlxB-0000000Bh8y-2g20
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 12:43:30 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UBGAsQ2541723
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6OK3ZDmTnhLeioTQJQ1NAvYXYvXdPEZkiIm0BydC/O8=; b=W6gj7HQGhDXp+iG7
	4V/LGVwlaJPU8X0isqrWeqcDf2mGwKFBxnhoJ/HcvsjrANqd8rQDEY+d8I+nDAE8
	P1P6nUPSsfO3DJe7APIFi92tkM/W7oMI0ShSPrSJQIzcm8raY6k6x7bQ3cvkoJ1u
	A6z+3/OBfxLUy6e+McQYDJIZB3U8EtBSjPZ+8oDhRHQoSQQ2vJIRbasGxToEiYtJ
	RtySHqm8kd7s+DkTwIwhdGv6tIVbkPmuXEj8lvPykq+xCEsXNNtekCg0n3S0Ku+9
	PgIwpJqKxLHYaqP/BqKK0IVMcr8jBgtUxKdrmRFl9i1dHwmf+2GYo+8jnHkLhubu
	8K7E8g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qk1vx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:29 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2e818ca61bfso8285665ad.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 05:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793364208; x=1793969008; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6OK3ZDmTnhLeioTQJQ1NAvYXYvXdPEZkiIm0BydC/O8=;
        b=RkiyW0Z6ysdZOEs/e2eOLUmrtlhk5VuHudqdePooQRIvbm43mnL8zxmCNsamN4o0+Y
         25UYtXDq952a61JrglY9+y60tQGB8edbOI8jul17SpovVqwgR0J7Kk6nrM9v7icZIFl+
         lVI5iAAr/Bg8cOXMXNsTsfdAp929Y317XxVKZZqZUII9KdJtyBzCJqy7st0kTVV57SFG
         bMYdOgW1uHe0gcIqne9iwq9yDyTlC71gO6prRae4dV/ZeT7eL8ybbOsRTunebha/a2zK
         1/GYW/pKGcBU/Yvb/t94dY/4tcSKgM4S/5jF/xTVf7qxtv7Uv/gBpoJq2DGAl9Bu+DUQ
         FxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793364208; x=1793969008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6OK3ZDmTnhLeioTQJQ1NAvYXYvXdPEZkiIm0BydC/O8=;
        b=123o85vdBkFbHVBv+m8aCxdqIeiUsGnu1JjnE7Em8UvdEXuzrOtZop7WNBZja1AOWR
         61qUZHPkL2jzvD9SHlAS9ChqyZltijWwZiZudsROXGl4aB+zTbVxvbYTVrJTigImQdOx
         2jcoF+jTWJyYIO41zxTZBrP59pej/+UIwBOIw8waV77DCW+t506MZaHzmV7iZNT3QxtX
         sMgI8fOFjfHC9MhWK0A9xqBr48G6cyH26FDYhUJS5kTKRbIZo2CGc42aUNkXZWSDfraI
         XoYXgtN6p5U/veuHrKQ8kFA4rk3wlSZaGa6w0DO4KfVGcqsZT0kZYdr9K4JL+RrFyqY8
         azwA==
X-Forwarded-Encrypted: i=1; AKwUvBxsd+P1FZJL6DMwJvdzjlcI3fPK6vgV1TnP/maYEi7VgYh8fzsyioiELV0Z+NLzIU+98JrkaOCE4Hw=@lists.infradead.org
X-Gm-Message-State: AFq9FYIjmQ05XncDv0oIgRiRQRucYFC/9v1Ck6bQLX7y0vDjcp4AiqJY
	tBZZDDOASLWKPR/Oz/hKy1U87Aq7QJPbsYD63+1EXGgSA/yzTX3g1OlxcXqxtwHou7egRxX/HJy
	uAKoPli0VEI8ST2Q0u0Gxs1F6hvqJPfkJPy9UQUYgm7nsnzhR/8jhppLo8ghLckT9/pC5
X-Gm-Gg: AYBFou3vFvFbG0Ogmz17o4dmBeTr6pvdgEK9Siz5l85Ge3eHKvFf7eN6ZRSBiQFh45P
	M5ipZlXHxTDuxlK2eH7xARM9iBCiuduEgqjGEaGSaKceGPeIHKZh57eFQG3h4bwnDfAu/X5cg/k
	pGEejt+Ea0pyyuvlPH1J3W7ebQsg2DA5XV1LYHuc+vzY1/7ur6dgwp4q2pCEyzOmFfslGbmQzyq
	44szz5jNtcDZmgRefvLFHTioROhTADgR1HVBZLY/CiqJ3O9fvxHgooHqrYhxXQNg38O7bTbBN/O
	D57kbc32Wg0q9ETLv0aYSo5/RREGahiecwFWISJvFhYxhJO8hCWR+/zYGsYtD/48YkfsXAIKnt+
	9Y4Bhvp4Y3QXCKb9T4t3eNJ/+5jpbUIJWn7w+VHn0wilE1qzPRGMZaR15t4pXHQB+T+ZpmEuPzg
	nd7fE=
X-Received: by 2002:a17:903:3b84:b0:2e9:3dd2:a8fe with SMTP id d9443c01a7336-2eb3648b9fcmr24829635ad.21.1793364208179;
        Fri, 30 Oct 2026 05:43:28 -0700 (PDT)
X-Received: by 2002:a17:903:3b84:b0:2e9:3dd2:a8fe with SMTP id d9443c01a7336-2eb3648b9fcmr24829325ad.21.1793364207726;
        Fri, 30 Oct 2026 05:43:27 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb3922f5dasm6450075ad.25.2026.10.30.05.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 05:43:27 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 18:13:01 +0530
Subject: [PATCH v3 1/5] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261030-hawi-maili-camss-v3-1-9742bca8cef2@oss.qualcomm.com>
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
In-Reply-To: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793364192; l=1341;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=dX6MizZIA1isQ45cxUBsZgjrz8paPsRmmoOT/a2mOUA=;
 b=Goh1WlR0jf3fQOa50V3RiuKdBhpRNJIYT9f0lf6o9kErrJURx/R22pq/QSA0hNNZQXuLu61u+
 0vJJ+wrFvk4B5FV65gAwLZK0YrGFNAfIBqv5N7RItutaBxCQK+0/fx/
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfXzWITGp+VlZol
 MYh9qxrshU0r1YEFxzEKieccie3DEcZ3cFLnGu4wGsNLLh0BbF5bxj4G5GCRsvynnv3Jj0/xDSV
 zuQzg8JgptDT6+lMvEn+jDmjFLRe1ejyIQJ+jYEzb9zEIg5AxPIS/HKKmGc0PxXGpifRuFqJnKu
 bsQDw/KqYiwxfVMydi3LKvavk5rTrYW78jk8ZPtunHxzFdsT+DodAufrjVJVWfr2vyRDwOm9fOi
 vN/69J8/Aokl6RPWlVbGjFjcmne/XrpDTVcalZCA1TpzwBk0kKE81Y/2C+W6T8tW8tqD7jj72jR
 US3TLqXm5xbVhmz0q6QYIcCFUcp3BkxoOqDiXnHD83aIlaXXpwrWfWPJI2lI6Z8ZuuPdYFIhWk9
 aim7Eter+R0wGpewn4zIVEqz81RMx91jUTbQdIsKLc9rvqNl2rqtNTBeqBPCurwvwqPfzulMxCj
 cLFHHraotbpcdhVPrKQ==
X-Proofpoint-GUID: 6CnGun9W8qgfVDl94zkVDgeR-DJsB_9x
X-Proofpoint-ORIG-GUID: 6CnGun9W8qgfVDl94zkVDgeR-DJsB_9x
X-Authority-Analysis: v=2.4 cv=IumL47/g c=1 sm=1 tr=0 ts=6ae490f1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=EFwTI_IBlkk_uzUYZfIA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfXySXr9iLd6P48
 LNkUWzS/KdbH7ZK/MsDfzm2qGWitPhYlWtZ2c2XGuJaKMnnXJV6SoLXFx7ZhQJA6F3Qp/2sCVdb
 RFme1Z+F4tbMMVAYXz8V042y+Ui1GOU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 spamscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_054329_686986_35EF0290 
X-CRM114-Status: GOOD (  11.71  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Document the Camera Control Interface (CCI) compatible for the Qualcomm
Hawi platform. Like other recent platforms it requires two clocks, so
add it to the corresponding clocks constraint as well.

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 1e8def25ec0ec1ef6b34859709d10a2a36fe36f5..b2b4d4bcf780792515ec153c873bace1764fb3e3 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -27,6 +27,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-cci
+              - qcom,hawi-cci
               - qcom,kaanapali-cci
               - qcom,milos-cci
               - qcom,qcm2290-cci
@@ -137,6 +138,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-cci
+              - qcom,hawi-cci
               - qcom,kaanapali-cci
               - qcom,qcm2290-cci
               - qcom,qcs8300-cci

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
