Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB965606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 20:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zyfQCkZ6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=N2wtZu/T;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gHVgh+65
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRiTit4jsrKqu1MBa7HajJf2lnaEp+lS24yAZw9BFMQ=; b=zyfQCkZ6mwpoJ8
	s6WppSYPnERB5Jti/haxiF5LyO25uA9Tzf2yHBRc6XgkPYIHxhp358pd4iOWfp+dzMxafQB7a0lZX
	6rVQf2CTHVeuubcbcYGndjMymkZ60DPoG2n9SuvfSj/KyH9LSsK2wuyGb3GL/L83CodBjfNz0nHti
	h0a63y7z6AOxSqAxR6Ppqll0oeY71twXY/eY2b8blMOeosXxRIukJMJn6xm43dWpxWewiy2xDFIkB
	SjjM+ltfIzTwsQk/YiXHVcKJ1iTq9ZvvHH6zO+7vL/qZxt56pv3DNLlDHk77U3FWVvQMrcO9Lcq8A
	DBFiK6+fKQHfVvQaHznQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJGkL-0000000AdVm-1aHc;
	Tue, 20 Oct 2026 20:47:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJGkI-0000000AdV4-107y
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 20:47:43 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KGtpFl1376538
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 20:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	94yToyo0mcTm8BGuVoERGHQo0UgcFuSToj2y29Zt1HU=; b=N2wtZu/Ti1khupw8
	0AJI52C3hmauPvt7qec/n/1uMqUSp/eK2IUYDOtx/p7GThbUsfN2kwGe0h+T2PlU
	xJGx9gbBZUnhbm+4cbQ2HTbg7Qdher3/0SwEN8131ZieBa7EFtH1PiG4oM1TIBQO
	JFVc9pOtecXWv9XPMJ0PfkG7ufFB3Ye94+F+khl2P79YmRz5q8AOtQH1Mme+P3vS
	eztoj60h6h7fK2vjj+5KQS652WBpAsVT6yccmORBg2F5IlchFRnCZVzTBIObx8vR
	g6rKdkZM8rR3BLpQA0zWICRErErTsR9cZj9coaYfDqopUHQYBZiZyQJow+K4zTgo
	zL8+JQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hebyd0wet-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 20:47:41 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bcb065bfdso6814741eec.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 13:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792529261; x=1793134061; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=94yToyo0mcTm8BGuVoERGHQo0UgcFuSToj2y29Zt1HU=;
        b=gHVgh+65m4AvtD8QrihFr7kXWk1b0ArryFh1zO+qczT9vP2uTUZyZKFLaTIGkYgYsR
         +lh+LhAW1VqkavrExYRhFcxXpF1DLvXR4PgIzq2TrsoBv2F/H20HoITK/5697+Yvl8ua
         Kpb4BAHJhXwFNxkE2SfAf+FSNp+NCWIEyViiawkKP7PFm5Ss7weCypQ/dI5rmluS2Iw+
         FJcAfSNIFu6s48cXyiEzAYM8irciR/EdBSGM0f4AbCE9jFFfHBnlrqz+Liz0YLBQLawl
         wZ26Gi7WR7Ju2i8uBx29ws7Ygd7cXxcZsCX4UoCdEwGF0V09vG3gU5XT0toekYtPMPRB
         euFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792529261; x=1793134061;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=94yToyo0mcTm8BGuVoERGHQo0UgcFuSToj2y29Zt1HU=;
        b=kcFPlE9lvFoL5kSxExUlAvNdSvemZjM09gJWd49RlEW+rY7EKfFBwFg78Uab2jASDo
         wQFVRCABbSaLzurVmNdsTnaWTBKWykHe5So7NUNZw0hTt0npmrK/2Lq1pa8ztWRxbHNm
         SXd3cAbFrdlSWN3n2G06a46rmIsBjMWa4FGm93jg8le0i0JFegHVjo3AloW5cVN76i6+
         8v+jD8/nUDF2bE8nrpBcLNb9qoXsvwC3GQ6vwwG9TjCdyF2pZcvrdPX3nfrRW+nPyJW6
         +RyUd524mP0KfAyIWL9SaIVX20nxS6sddprDakJAIw9jQkUeq5NrAcaFPwlRbres3CKQ
         1PPA==
X-Forwarded-Encrypted: i=1; AKwUvBx1wam51LKQJaRUwB7Z0fU+uTZ70Fia3YohbPGHyfNuaE5dB4iXU9ITeRXQeVqykRGBv8ey4bM1t00=@lists.infradead.org
X-Gm-Message-State: AFq9FYI0zg8Uau+KgGI5AkcRReXWGBCBueQZVfE2AeiNRURQofEJLTrp
	HnEm9MtVebp7sdBlNDQxTH36ByYf6Ocf/vY3gFR2tzAf+3259vRe7O/XdkAM9Va0MtAntlbARcH
	nioUGWEEoyZDFXrUg+uXVCgkMxwWd0t2WSipS1/wnB1kuwuZFijIrdxMPPJl54Ni+X1VR
X-Gm-Gg: AYBFou29dESB7XGkwrEBSxne/AqCeBDulPdS++dBMx2PF98j9TAigR5zxw3s22OiQqz
	ehqTYz+CaJWIcQD4q8vqv1Pzz9deCRJu9ndXJ2pZeBscy8M+/uiB0//jEGde8TefUm+N8uDd3f4
	L2aDtlX/F0H1DBQ+LbMxiGHAkxlGhepIOVFe5p6zgLZStvwHEX+A9anXKWxVTWVcXH02pqqdjWk
	6Ji2vV7v97ym5VUY2JnR8D6o/z587/bIHs8e0OpqP0JhM/iq7zrUqeG4UlFMIqOU4rWUYI+TFdC
	RMFHiqgsJ9nxbLTa+YXSssrmuKid7HbZetQkdbmAr4k6941VpbbTggJ56l+78eq5vOJ5CAqGgPI
	7NwOVlI0uokskMeOPpHGi9cT4f/KyVlKIe76I6LjC8P5VDo5Jja9fliGq2g==
X-Received: by 2002:a05:7022:302:b0:157:cbf6:89c4 with SMTP id a92af1059eb24-18514350f17mr24991484c88.26.1792529260984;
        Tue, 20 Oct 2026 13:47:40 -0700 (PDT)
X-Received: by 2002:a05:7022:302:b0:157:cbf6:89c4 with SMTP id a92af1059eb24-18514350f17mr24991437c88.26.1792529260407;
        Tue, 20 Oct 2026 13:47:40 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1903e4f2eacsm880701c88.23.2026.10.20.13.47.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 13:47:40 -0700 (PDT)
Message-ID: <624e580e-3d14-4b3e-bd63-9137a63abfa0@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 13:47:39 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy
 schema
To: Bryan O'Donoghue <bod@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <qLjQvei0fouaxpwPTn80Nhf-aITowIXFteQ3i4M6uq3PVYim2WLaeukVq1MgNcwOeagmzK7HP1tzQbTTlhNXOA==@protonmail.internalid>
 <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
 <bf402074-d666-4988-8426-d8faa9625551@kernel.org>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <bf402074-d666-4988-8426-d8faa9625551@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA4MiBTYWx0ZWRfX3s7aU+04On41
 Lfbp6mASa5QNtzHca4weRs1ELyg9NXkvwFbndR/R5uzyf0VFFOY0IeueZhio/z73cboLMFQW5bD
 OBFE5cwLwbBA0LYUKTdqez8+pyCNgVfGOzSxJjtsqHp87wmP1hidZCVFN+/e7xUluyUi3iHb56D
 5sMQnVS2QhY3wo4tTqoVOnrc/M0sQCQXpNBAw5AkoQXbBMD2Xth7ClU/VMHR3Vw7KoE33I/k5rx
 tqwdsxmSaGjph8Qpi4UemDBY59fwad9yCgnwXjVwNCfNbn0GSSmfUs7x5/wW9N5UxCGoFndpMv8
 UEpDFGGE4laRYqeLy0KcARWZojnqfV7BOwSDsfAojKKxJLeP63jG22/701egH4yI/HAvEdyFDqN
 VZngDIOgJHojEHH+keqf4Pe4gu61ty0206GO+DlLMhJ5o9jZqSnUYni/GJ+1pDRj9wg0drlcvFJ
 BpIgufwwd/Lx9zZ3BnQ==
X-Authority-Analysis: v=2.4 cv=TdsDJhQh c=1 sm=1 tr=0 ts=6ad7d36d cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=z39C_I-LsHAogVuORkQA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: Blec2xVMOD34SZU8Wz62PGTE5E2gbUwG
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA4MiBTYWx0ZWRfX/qUJU/swWU/D
 xdO4Dlx1wqA46vakJOmr2KLHeymE2n8JbQt5ABVq5PgeYMkMPg6S3cC3gGB/vH2jS4McgB3jXj9
 DbHOfe48ffsdPtUlrlKwWgORoxr6Yrc=
X-Proofpoint-GUID: Blec2xVMOD34SZU8Wz62PGTE5E2gbUwG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_03,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610200082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_134742_309085_B842C543 
X-CRM114-Status: GOOD (  13.85  )
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Bryan,

I agree with you. We don't really need a separate file for this. I
was just following with the series pattern that you posted.
Can I tweak the name of the yaml file, which would be more generic and
can be used as a single point of reference?

Best Regards,
Anusha

On 10/19/2026 1:29 AM, Bryan O'Donoghue wrote:
> On 17/10/2026 00:54, Anusha Arun Nandi wrote:
>> Add a device-tree binding for the Qualcomm SA8775P MIPI CSI2
>> PHY, modelled as a standalone generic-PHY provider like the existing
>> qcom,x1e80100-csi2-phy, so CAMSS can consume the CSIPHY through the
>> common PHY framework instead of driving it in-line.
> 
> Do you really need a whole new separate file for this though ?
> 
> ---
> bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
