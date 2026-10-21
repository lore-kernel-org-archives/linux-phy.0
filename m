Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3D1606A321
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 13:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Hckq0f+W;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=HipwKjsa;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=QVd0neP9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQjK+80fC7SW1sTqskmZGmNQsZO8ZB4nuqXKedHxv/4=; b=Hckq0f+Wk80Isz
	DWvn3l8Z8n7qthhsr4KqSo3/vAbzUEe8br096rTwsFPUbWAdCi8AnZPYqsHY06i5HoVcEy7JPNXbX
	FAaUtkF31w49l7vGhW4o2VtjkWvQLyENGfH8nGJVMiUz2YIItRvzJ8Ssta6T5UKobdqLzWoQaUZmU
	BMFodaoSsT1wuyRXA5jLMoo6O9Swv2KjmyfFZCPtO/+VxZEG8/sHCjqel63RiEO3Cnj/XtPpWVbv1
	5X3ZAZ9/evIXUNhxyh9cHxv61vMuHzJJP6Ck6pLynF/kgcYDblZE4lZ+6MFUHCi92PPFzUTjKmfOs
	epT66oEhwPkLFHTF9l7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWqn-0000000C1lR-26GV;
	Wed, 21 Oct 2026 13:59:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWql-0000000C1kq-2ifQ
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 13:59:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LBg6C01599989
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 13:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v7pESOuNoQ7+2mmCjub8hEr79x+EvIKeMwX6F60/Bkk=; b=HipwKjsaFTPLlEni
	mKbIfwZBmmxxgZFkWfSwqs72ZheXRop+st7cnpzo6zrP0M6LO70KS2wXXNSzwjsE
	+2y0/aS5l/5pRd0G9R9v6ja9BUidUh1PG7noWIdn4acWUvvnjhKduhbpTawAd5G/
	b+lXPGThKktduR3WAEtE3aSrmOYAnO6sys/xP93f9yeFMpqSkjm+oa8Gm23Q5n1M
	GnNZ552BhxARmlbtitdGmNrSrQWm3DjXS4PPg/jkQRiCDaxSNx4ZNSStPwNz/Ua1
	dOa/597Hgf/xoQGwiGJF8iQ3fA9T08Vhd7E4/Pp5R+4xKyihA/JfmJDU4b5jcRss
	8kzCVA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4heuhugtjs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 13:59:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-934a8cd3a8bso9465485a.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 06:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792591165; x=1793195965; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v7pESOuNoQ7+2mmCjub8hEr79x+EvIKeMwX6F60/Bkk=;
        b=QVd0neP9GdcydKfRRJ3qo7wyDXWHtJ5Q6FcPuBZp2F4N2+G82XHl9Z00SSasH6v5tb
         bhjIYCE9vDBTPEnCPkcVhNaH6a7N5i3nXHu54fTfPGPfwzMf2TEfjYeE0QfiKdjjH5XR
         VwYezAaHGtTykAbop398Y2ktimbc32DDlKTSRmdJQa4ax1R5/EFLX6k7CHPFhkHCVxdD
         SPK5TlpV4elDO6a4f1W2F/qPKXqlP+MvWgW6NB2Ud5LJ81xkC12AyxsEJ+RRx3NfoF7S
         qJ4FI0/O1C+YZKDnhicbp+ILMI0WE5Ep7tbtls2a6M6SOoNlKskCiEr4YQdFmfbRmaZb
         Q80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792591165; x=1793195965;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v7pESOuNoQ7+2mmCjub8hEr79x+EvIKeMwX6F60/Bkk=;
        b=pVHtz878zwKOT/dHDUmQKFkaaut+jD6WG1BMRXXXcBW2f22FIn+8mTY6jYhe+/n3KA
         /kLtPtjFTuKzQsbfv6V06cdu7Mk2C5/rVzqstPNV81qhnygFk6az0pb24MLHJM+DlPSG
         +zFq1xJVQW3nyFoGLWUcER/sCMC3WyzrdZ98qlGhsJtiRmbRQJYehILup6QmXcCP7QfI
         519WYGncGlOllYM4Br16/QIZ84iPA5cDtRAV45bgUjmwx3/BG1DL86q0inWI8XeNIt2k
         YL7kRTHHar4biuMrRTeXQvAmx/balahhMo2IQCkYUAmWZap9j4m6tLWzmUX06cQi16Bz
         OWcg==
X-Gm-Message-State: AFq9FYJo71RPj8H1R/dSsJE7Ru4lDe3figb66JNeW2qi9TdXfr5xdQ2P
	55bes16S0I3E5WXdeEkRhRnmJYvazVt/M9gNUI0f5KwS1CcZpbbbyo5t8vaZxM8QIDsucg4477f
	xR8RNCOKRa2/+0ioUiOTUDMd2iWHaejdy6b1zVK1lUa1AseMNN1bB9FQG2Ox1Irp1mTez
X-Gm-Gg: AYBFou1hf02nef1NxqK3joxIvZtz9Jami5eGf9hPFtHQYdZdWjYEGwd8ocsEVCM+QUO
	PtrtJ5O98vEzjB1Xp4hw/5MZ8IBjRi1hu3KH16FacjJdYctrz+poTxoKiY0O34BuwpP7SqspsXn
	PXQR2d+YAwdWJLGLam0O5m8swr7Pnlzgy/OLLxqUQLlDhQ2OP1mwpYVL+XxbCKOtTy32o/iygx+
	p3DCHFsaS26Q2q7QTSqAnW85Y0oVc0xx03kwwgNVjTG5Cv+Sqe+c1+FqndNhti+qISofnMQNNsU
	fXqLNZdBu8+Km4Lm4A5uwKzdjpFSE9OckJpuEa4Sw2D1y07OuA/SZozMPRh/D1hbRLWbOg7IuSP
	PMVql7V+cSWnw3fRvRpYfSQ==
X-Received: by 2002:a05:620a:172b:b0:939:8bc:8826 with SMTP id af79cd13be357-93f57e897a9mr481260985a.2.1792591164934;
        Wed, 21 Oct 2026 06:59:24 -0700 (PDT)
X-Received: by 2002:a05:620a:172b:b0:939:8bc:8826 with SMTP id af79cd13be357-93f57e897a9mr481255885a.2.1792591164457;
        Wed, 21 Oct 2026 06:59:24 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b403167e3fsm904154a12.34.2026.10.21.06.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 06:59:23 -0700 (PDT)
Message-ID: <f275d9de-a51b-400b-83ad-298d0fc9eda8@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 15:59:20 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 11/14] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-11-04fd28d815c6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-11-04fd28d815c6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d4JgWhjE c=1 sm=1 tr=0 ts=6ad8c53e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=wTWGZ2-w8gThuRR8FIoA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA1NSBTYWx0ZWRfX592N+KSIeYyo
 50yJGrsduEa1N4byeBSOR1G7knIws12cEG7Su9uKm1pRbj2IGcTKXRV6u8o/tu6yQglmb75t1+0
 CvqZbo/76nJPSg25GJ0qvs3iyD48Wx0=
X-Proofpoint-GUID: eYd1Bx_19PFK_s0Nwf24-aaF_j8IS3lC
X-Proofpoint-ORIG-GUID: eYd1Bx_19PFK_s0Nwf24-aaF_j8IS3lC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA1NSBTYWx0ZWRfX49GR9OIzDHIf
 8auQ6VGZW+mG6pXg1qrBBbrNsnpomJ1EOfXY+T2bI8MIpr/2DZ8hiq6OStksy0ExocB8Xj9CT88
 XMd4FXfWvCR8pcQbJWoor+wWtSO15AWR34e9xKuGynWu61N59qOdO+itAmmqrKI2YTEkfzoCPWq
 fTp3cq/6qUfL6Bxmq24fBAHw/9dnKpeUKbzHxNTD84hT/e4wG4RumLPRIfiEaCffBZN66qVqWlU
 w5pqg3gwAhpMdiRx9drfHeI5umE3HiXKwwdYPYb52eeapqzNdIDcPIzAFiCW5yjUO1G8ZbKod37
 24x94hUVSveLRGFpCWHvk+/48SH1WKJEXG9F7MSKMZshx3K2fxmONPanhN7w2RSZCWrStt7pgLP
 Bly542FhE8MuCDPmmofN/Xk2z5Sh7d8/p9+VgeeemiNnzCCHUvzmsjhJVjFDcX5Q2Tn2y4gIs6K
 tbniiWktMIkL1NAfxNg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_065927_698627_73A2C578 
X-CRM114-Status: UNSURE (   8.84  )
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/12/26 8:45 AM, Hangxiang Ma wrote:
> Describe the CAMSS and CSIPHY blocks on Kaanapali so that camera pipelines
> can be enabled by board device trees.

[...]

> +			      <0x0 0x09191000 0x0 0x20000>,
> +			      <0x0 0x092dc000 0x0 0x1300>,
> +			      <0x0 0x092f0000 0x0 0x1300>;
> +
> +			reg-names = "csid0",

Please remove the stray \ns between each pair of xxx and
xxx-names

otherwise

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
