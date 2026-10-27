Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804DF606A323
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=huGbebiH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WVwAbHdu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=IUx4MJf8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NCtwiNsWFP74+Ogullka/K98W1O9AWMEDz9Oszp3bmI=; b=huGbebiHE09XM4nfUzIwpv7Omw
	8b1y6A9yNHRpr4B7ZKkz1TDGYTyN7c1+mh9OfURPqB5HUsSOeq01cTVr7mwJZmv6rTuV3SQGX7TlQ
	bI/lhzRYu2KcPlUoHK9BNG2YbUgKg9eGxnhUgWq+3jnIv8dYGciHbUxq4oxipAWdJFW0keEhvDSCJ
	6mpHOBXcVC2Pb9k+vKasoAUOG3kPVUL4eSttA8kHUeJPnGHbkfG03NRVOx+8AyTSPAoozqpu9J3Az
	GzYz7FdtjPuGjbU/kFRhCpSCxSNa0IuE8DlcqlmWWazFOIELTEMG5FZDo4S8vTMcZ9Ck3bvPclmzw
	OOtlH7Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf6S-00000004PoP-42Ug;
	Tue, 27 Oct 2026 11:12:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf6P-00000004PnQ-1MHs
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:12:28 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAe1Eq1921843
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:12:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5LcItJXuNXFQ1eh8RpKnheo0
	zJPTojpSv8nt0cOFZYU=; b=WVwAbHdubapu1ysJDNo6+QNjAk9/RtUim9IQOBEY
	2WgttqTaUtEV0gY3NVeZdHNWhRP62xUWprrxsKfJRq0+bZ/jRLnjqx1syqaIch8d
	S8QhCaAAb/yMmCKNQeqYR8oqEi1hGOw7cvbZNUMZSBuooyKPKnaYb7Xvu3eVw+Bl
	hCVwNdwAi9XAhTcyTmytAHsMc1pDg6DTc6Y6KGxbLIqy09ADacDMSs1W9FJD6MMo
	RCT+DsOCTUY+Bm/3rKPdTBF3rLG8XZR6TdU1ucNG/uvcVqtnxju5Wohz64YXBTZp
	FZsY6uef2QHqGp9KtR06WWSdeaK0s9399p3z9WXXoR4ZgQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjrq68jje-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:12:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93f13c143c8so739923285a.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793099544; x=1793704344; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5LcItJXuNXFQ1eh8RpKnheo0zJPTojpSv8nt0cOFZYU=;
        b=IUx4MJf8Chmv/5j4RdVTVjEmEhExJknkfWbNJBSOK9w+aWdcIivlSX4Ji24rfSR/m/
         K0mfb2+e/8tXz+R/jYDKQd5VI//ODQyxoLCoN6fN3OEk/n8nqnp3GyxjptEjpLtz2l5Q
         6wnunHTUZS/OVl561+8WnehN34t7WFtGQ6K5Gd8h1848xnuVsn3NyuRDQGn2Y6YLoDTr
         R1TlLFb4RdViPe8lRYLSgc6TPbquI3iu9gKlNjriCVPR2WLimUvHwOJh1Rx0TVNs77uJ
         3aFgy0y2JHaiYucefWxdniJHyNqEDxPlkPsz2rThytVBITrevzqZSCIDeyvmOPQNiJYj
         j3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793099544; x=1793704344;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5LcItJXuNXFQ1eh8RpKnheo0zJPTojpSv8nt0cOFZYU=;
        b=IidlF4tDRwCC4JmKQ/PYmkKtW1N8VrxT9nvmdBBQijNv6CpyssYGYpybAok8eyeESb
         OltRlTtijsW8Evv7xOSiJ1/y09GGZsRte/MBi4b6zfITuhe6VRaKNg/ADKtimxI/ZjOB
         /ca+AG/tON1tUYI6X8uXdH924YfvDYC8DxscyNspIng3neddCE8sue++otcC9/RQyl86
         ORDwM6gZ744J0egCK1wR5oLXhY6B3wtWDs4fNi17YaWB5F9tcGsBecV7r93iYjOwV88Y
         k7HXaNNtAg5Hz8hulvRW9sTwG9STsv1j8rT/jwSuidYTVsI7iDonHaWwcGp1QBJ+ATDb
         LWRw==
X-Forwarded-Encrypted: i=1; AKwUvBzSw5y/O7+xfkFXliasZAZ+76gyqahai5BIt1C2yjWHVS3GnltBDmcaoJGpsZ6GiOJLvBwvRy+RZLQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ7wdFn2xVfJPUepH8cYdMTiZRJLLK/Qlzp3mz0x5tf3U9njkLe
	+l+ozcEDA2jUe1QJSaheKIDbtDNVVgSwEMQZwvN0/Ps0TWEvRnK36Z9PsA5hLeP4CFanSoC1Say
	d1Mh87ras3MJUTkIrdWcmeFMU7498DmA/W1NhXk5gqPxcvxuMa/tkmSEuZykV1Gc1QZeY
X-Gm-Gg: AYBFou2YBOfs8ErWB0blUxVp0+UI73yv1myXceakpmYgycYxGl/yTexX+4VdJR6X1WG
	kcC6nRKi/qsQBG1UXkhAk5PFV48qN9KHge1huxGsUjK8F+NkgiNHEXTQ1ngYkhrzNrYqcrFTWzo
	fGUd6IrFaLKYAxuStf6OxfOTYyOmI/EMYE/qpqZ22W3UkwbIO/c92soIeUfekU1E5oRRwrpZ8AU
	5dYf/JFchY7ioaMEGIC/vqb3qfIoXB0bFbqZieCM9OeTIxcT/nlMh8H/4Mor7Nj8s70cBXFnXvo
	5132OHJLl1gCVc2xuJ5/pAybwjZtq51c4uGCnvBsgJHW/3uRUsOApOHmTvKXZaiUZ3sqxhd0vtp
	d2QSbpzX0ZMpOy2IQ
X-Received: by 2002:a05:620a:410a:b0:93b:fb3c:2d09 with SMTP id af79cd13be357-940ef995afamr1483247285a.66.1793099543690;
        Tue, 27 Oct 2026 04:12:23 -0700 (PDT)
X-Received: by 2002:a05:620a:410a:b0:93b:fb3c:2d09 with SMTP id af79cd13be357-940ef995afamr1483242285a.66.1793099543110;
        Tue, 27 Oct 2026 04:12:23 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a359fbb725sm259014395e9.0.2026.10.27.04.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 04:12:22 -0700 (PDT)
Date: Tue, 27 Oct 2026 13:12:20 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: sm8450: Add description of pins
 with MCLK function
Message-ID: <rtjp32br42qz7xtfj4jwamvbzfpqroxuk3le5kseac3rnz4n6h@gwcmaiarpo7i>
References: <20261026224957.1115370-1-vz@kernel.org>
 <20261026224957.1115370-8-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026224957.1115370-8-vz@kernel.org>
X-Authority-Analysis: v=2.4 cv=RYwFmFtv c=1 sm=1 tr=0 ts=6ae08718 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=qZm0d5fHY1XYkhLSR6wA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: o6aSbobKAFE8saMM_UpN5DGHS2xaJ992
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfXymBxxNaJx6gP
 oQ9KyUak2l7axt5dw0R2vKLEshQzz+mJFG4I2N8KuoUTZRJFvyHTw/nbmKyzBAEFyrJ+wPoMluj
 VnPSkqSUmYWhTWUoqvzO77wkqPjzbmM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX9RptSzYvLyen
 QlBeu2tACkOdn2Lo9J5E5b5+z8hBDCWhBg8TdI3xgdy/IjQvL1d/bOTUhmb3+ca3kCEIOC5nM/I
 su9QvzEF2L3y1qzoVRolBY+Ap9ruMvfAX68fSfNN7Fr6oVEF+W552Pshc+5gMjG0n3sH6ccI8KU
 w7vYIlQmNc9I3nagJErLuRv2ZDCN4vsqkp7TIVcxkaIsetEZjrRtvPhmscNWaz4cTkuDmezR3RL
 FpNNESZr0/rNj+qp/4CwKgNeQSp6HODRRMGnpfj4QGpzzQRPwLmNa8HUzb1ftPdRCEVZFGBY4g6
 4p8sl0O7FNrn9Pjn4Ug/r7z78FF5HczXsPxciy6Bu0vhPMFVALoeBxEsO1arAVx7d3M3XpBDkLM
 EQalGvj4k+i8H0zVzb38pxbqdxtppfE4jZKiFw8JpiT/K/Zxp65DYk8AMznb/Mt0W3TPXdL47lO
 WC12d+F7HOMrCiMinEg==
X-Proofpoint-ORIG-GUID: o6aSbobKAFE8saMM_UpN5DGHS2xaJ992
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_041226_725784_8B50BD69 
X-CRM114-Status: UNSURE (   8.65  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-27 00:49:57, Vladimir Zapolskiy wrote:
> Qualcomm SM8450 SoC provides up to 8 MCLK signals on GPIOs 100 to 107,
> add the correspondent default and sleep pin configurations.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
