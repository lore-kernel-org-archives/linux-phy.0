Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 071CBC9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 05:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJ6bg2F0m7Fkp1k06aACFKcGxczTBdSz6NIoskDg/Ao=; b=wxU6exRQiUrCNn
	GIfgXsTTPnY4C+7it+lgrUbiH81CuO+Q8IIGlLRrhV9TkP0Doxzl6HCy7eIo/6VMIMexnDKH0RMP1
	xVRUY4KBo9RuI1fTr/Yy3kw6otyPe7lBYQfb2E6zelVgK/+OPOz3baacyItgFuYie6uMIGa0bGLna
	qrq7L5+sbf7Kspp70WMomarXKcOSWLZLkJRvBFrLvXLVZ7uU0D5dfBeEvtXiqedEvaeiDuOPHfD7k
	GHEt4anT4jmCNiXfc6WEJDdJznywRF1qx+4J49PZpXXvbkPdAT5A9kAPWqmAkSJHt088z0DMmV2XZ
	EW8E5fHqxF55kz3o+oNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yoE-0000000CioW-2zve;
	Fri, 25 Sep 2026 05:49:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yoC-0000000Cinl-1hmZ
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 05:49:21 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68P4Z2943737364
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Oss9++ljyuGbbaBIi8aA3J+tr+vbQN/DpaXOHs8TZi8=; b=eGTfyAbELFWnKAfB
	xt+GAruKXEPtJTQFZX/PIVtmQgtWvq3H3twCVe7TRXsKkZ7OEssHRWR7Fpr0454B
	OCpfsfIF8WS+HXgHanD+P/V+sQYlZlv2lft7d3kloC9jV8koQJTTKLmMFunDm+ur
	ehLDFd8YdAq7FSjJ3KuCUK4GyfNBySPaJhJPYEv7ewuu6d4anJqKPnlbuZgZC1lW
	AnLoj75lg9KwkmzSUtvYjzsc5r8mez0NsaJkwy2Ab6DiEUNCUWaAt09avcXUMyaN
	ihJX/yNEFryAZd6+FPipPbkKOt/PsxfmyAWwHjXZkhThGePcRz82UBXJJRUscZk7
	HAbx1w==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gw68e2vak-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:19 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-3284bbaa89dso2098399eec.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 22:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790315359; x=1790920159; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Oss9++ljyuGbbaBIi8aA3J+tr+vbQN/DpaXOHs8TZi8=;
        b=XhjTUJnl59CqkH+XKWvIVQACufNb1Ibr/N/rmedv1BpaKvnVjkvi1r6D6BWyu0F0vv
         aKltbQu5CMQX0sqg0aLWdRHbsG9BmW/SxLx4lsmpLhEoWPt8o6KXkfrx1u1ShIX2qwE0
         oXWyRZTmkKogiEJpDgJtd3HzJgBeVzwzPBfsRu5bk72oq7jftB8tn5X0hx2ofJdqs6pV
         /306gxUlbqKDFSyMgh2l7tNxt0LCBhIWRv7vpU8NEaVa8/FVghdrS+6Lo+ZM7PV+Sd5G
         H/2wQ/x3N1InvpclATVxtR5pKRbS8POPHh1aELuvwz2AhYzUaOTD3b059AytupuK75rC
         jNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790315359; x=1790920159;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Oss9++ljyuGbbaBIi8aA3J+tr+vbQN/DpaXOHs8TZi8=;
        b=RiDY8MdKZmVYZuoM4NR5xOS7O9qRVH/cc4utj8LU5OmEJxBMVc3XnlJGxoVfZo9myO
         9Lz+GvyJP7yRJVIbZK9igi+8f8m0GDd2mWY941nW9wPh4e7E/piPrbP+/drrReJ833nq
         96BCTUd5P3moSO5u5q6s+aRTDX/J6MyG2D3Mmk2qqiGtIeoB83atuVdgzTyC0OZeNSSc
         rFv/RJlc6Io9QR7Wrt+uW72EzmMhYeEcqMLFplHS5C9EP9bFKfth+bnfxEd4I6djfsba
         zN/9rM/HFPht4CXjCa6ZFkJAbw9FyC/XVJ5uTDmSNrCrMtiuR1g+3zrYcOQ++vP9JZ97
         gNKA==
X-Forwarded-Encrypted: i=1; AKwUvBy5BpMgC0PWCjZS4TXrHtO5nfeDmVgeyqYnwyjhMGodz+KEaR9U4ksiWZT4nrnxxjixBGjKPtrMvUQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nfQpOlczSCm5Ewut3CYwht72eTmhwFbCx+grhzZ06pR7Prb0E+
	rx3TF3V+IqPcl5bPpvmZmDv1cL0EOj+zu01jOhHY/87oJnYEVy5ifHK1R4f9n5+28SdGdkXiL9u
	PaORSp6GDD+8sZTUSbtEgY1fjE9ZMb/cWwaMTdFzd3ey5aSHw7wCxpSgUWCKo0FTT6OK4
X-Gm-Gg: AYBFou25Cjuy62l7OGYluBDutPXxmu6WaTLSwLoLMZlB6IQnYDFN1BhCD0m+co7RBAs
	kL4qj4f65OZOHVkb0H5VLHNiO4BJHifmuap8xeKjgSIH6wnq/13KTi/XW9dr8bNVWN+r75NY94b
	f2nuQOp9pGetZmVlR7S8cYJWcaIxGHnhkBBdUPZjy/HzXnKvpnqgOZ+dctZVx1EDNeCt8E9TW/w
	gVLpDNay89pWG/XMjhok3PzQrsKLMPcuSH8OoFoH9hzfDRy1wsJdnX9ibpi/U/XlOJpzfY1Cem8
	uKIhGtM6/w+fiLn8jVQJDNcoY8nm0GEJDl+c/TPCNTm6aXaAFcstNVhnajQdIPK8U60kw5QZaD8
	qoygFUY1MvnFH06vQs4+5MDjyAUx+m6o=
X-Received: by 2002:a05:7300:8427:b0:334:2f5c:7c71 with SMTP id 5a478bee46e88-34003ea90bdmr4212599eec.33.1790315359108;
        Thu, 24 Sep 2026 22:49:19 -0700 (PDT)
X-Received: by 2002:a05:7300:8427:b0:334:2f5c:7c71 with SMTP id 5a478bee46e88-34003ea90bdmr4212565eec.33.1790315358318;
        Thu, 24 Sep 2026 22:49:18 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34144757747sm4033640eec.13.2026.09.24.22.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 22:49:18 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 11:18:47 +0530
Subject: [PATCH v4 3/3] media: qcom: camss: Add Glymur compatible
MIME-Version: 1.0
Message-Id: <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
In-Reply-To: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790315331; l=1214;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=QLwU7fKegSZgo7lckFiKBtN1ZL2aPp2XYB5oMQOrME8=;
 b=GmEpPaANJX5Rbq9h6qVoKL1Y9Z5DqvP0yTw3ry0S3pNLIgkkBoGmp1DvnWKweEA8hq9eRoF4i
 MGN5D6ID16RAFcN7R0Nuax6bTwsuplBO+rOdSFi/QbrQDiRqc+R6FbV
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfXyRkLvsRw37qB
 Jnj3UZ0pGvunTnNUf/LsVNouNwN1oMCh8omUJnq15sZQ/kzDdu6cp8rYPBaLjP6w+27Vv8PJY/Z
 9cLnOvnCyqS99ugvLqDb4PQw1fr2U0XdKLnuA1tpn2RdI2GKoVUZ4n3PXlSAY62Lqr2eclOh3YX
 8PYLRP630KzShsTiswQybpVH4h06eWPqL9rtzS65gvlmrN58OFpug2hqeFyLnymAKAdoDZbiGOD
 5PHE4IKK8lm+4rKrgFtzh39IbwGQmCmzg9QJvS3aC/Q8L5yjnKfwmnpt0DTfj1xVEJCl0iUVWnF
 7oZP60pf954um49qn8Ijbl1LEXDqywDyVOGoF/cOpl7TcPHwd6gRBEL69VQJ5ttzlGqIid3wOPg
 KDPxbGzZL0CD5RhHA4yYlwkQMduFjjkU8f3JJggNoW4B8KP8iUnJF5KpPkm630OZSiVe2EBZfNp
 MnYtphVhwEqZpCsx3zw==
X-Proofpoint-GUID: dfLnmi7I-7KXfaHn-ScRJGKm9OcNv4VS
X-Proofpoint-ORIG-GUID: dfLnmi7I-7KXfaHn-ScRJGKm9OcNv4VS
X-Authority-Analysis: v=2.4 cv=XawcX455 c=1 sm=1 tr=0 ts=6ab60b5f cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=xYyVevvQUQiUFKtwU9sA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfX8TmDpqJnELhX
 BA1YwGvR3lrwPrbZpNfQ0MoGHPG7OgULSM1F/0ZqqLaJLBDkxGyqvFdmBN6scIuR5RY5ky5e6ee
 QrmyeV/yMkZnWUxzaUi6wysGnpRF24A=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609250023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_224920_485852_2CB88DE7 
X-CRM114-Status: GOOD (  13.41  )
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

Glymur's camera subsystem hardware is a functional subset of X1E80100.
TPG, CSID, VFE, CSID wrapper and ICC resources are shared; Glymur has
three CSIPHY instances versus X1E80100's four.

qcom,x1e80100-camss is not used as a fallback compatible since it is
already claimed by its own binding schema, causing a duplicate
compatible warning in the DT schema checker.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 23f3cc30a15a5e098162bea98ba69fa636abdefb..9954a99981004590d34c722337bb6510fe759699 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5751,6 +5751,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
+	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
 	{ }
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
