Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D180606A323
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 14:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C+ofWpy2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=anFs3Ywu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=RCuKQIrf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggu3qxRXEaD1Uc7WUqWgNjP1hDHBX3svsR2rrvPdg0o=; b=C+ofWpy2u35fJL
	88XYnZhyp+V4453XvlJ+eVAdwzPMWGfFDs+Q15OyGBisIbl4SpOnRTOMroZylrhG5GnowWCOYWwK0
	qQE+SWu0vbjbosww6BHFQIQXP/D6zytVazOx/HfObSaxLz87KzSpoNaTSvLz1axdWgUQ2zifOBeEn
	V+ZIiEO+Xs4toa/w6sHlyytSSizGWEcLcfGrOmdTxewK+0m4aBDsPutwbjbE9paJQfMNHVZPsE9WJ
	S7yJJRi97msAbav/mGmVXm5MTYgvXdJrZBJYj077nDzLK3WLmu7DvCIBc/qGfrglCUCCr92pHFD0l
	jRGMmtIYzJmnCcOYKAzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWrs-0000000C1t7-2vK5;
	Wed, 21 Oct 2026 14:00:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWro-0000000C1s5-0ukE
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 14:00:35 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LDjwbU759957
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 14:00:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+3tXMKH1cZEB1OAWwRarq301e8JF9qJ8xcXAxkIXA90=; b=anFs3YwuuX1o37vW
	4zYwv5s5aGMgXz8XlFBBMG+cu/YjA00QUe6oESLTHCOM1WL0EfNjYPu/OCUcz20L
	woYdt0/5SoOV92XMti0q0YpmZPOl5UEeGCQ0zuUYY9r65N+MVWh6Gm7AKqU/LmdA
	xBQ0L6lxlHw3+1nSiTk+vmylMLLa/WD9kZRa/FxpC+U4mIVl179fBN5Dxccz6hOp
	5pfqk5yB49HeeXBBo6RhTMZkaq2QnELVvhaduiN2hLykk2eQK4g/qWh/vQuNHYDM
	l/5tPvo+59rV1uX4nzAUDK+UPxqStx4APjpKYhbdDH3Fl3JTb0kLRoORSHBLUiB5
	L/utcg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4heh5r3ajt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 14:00:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93ea8a9cfe6so20487385a.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 07:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792591230; x=1793196030; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+3tXMKH1cZEB1OAWwRarq301e8JF9qJ8xcXAxkIXA90=;
        b=RCuKQIrfZxj+EYTpM+6H4cJMmkgv2aqjWeYxZN8C/NdWx5CppDb87LaC2xdcU6kI5y
         BGIszQFlZDco1uZEExbOtSxGi3Hw2VmT4gHKwSGZ9dBfPJkUiUdI3HGRv0jF9bdYkhgR
         oe1QCWmloR3HrL8l6iFxHFZEK+9LzXe+7v2rJwPFx0USU6W9akzvNgGPYG4h+I6ZxMEL
         I5YA4jLstoqqd7/5fOmVBudIqawb0k/DNzhHQfdiAMaAoO0nc2LyriBXf19BTGWFGzMa
         wZpaTPA6JRh0ZqPf1F61QA+86lkJUxN1yjmPUfhRcScLgPVYvogJWIdfNkk62jTur/8W
         QRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792591230; x=1793196030;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+3tXMKH1cZEB1OAWwRarq301e8JF9qJ8xcXAxkIXA90=;
        b=EfQjMAhbj4kaJs98y/1hh9KL6vmJLTrRst82nj4MT4rxCUNUMLbrFqRzb4A89Rx+iE
         9Xnjgows8Wp/1lUzh6gP0YC5JOxp/Yb6eR1HB0GwFB8rlkS33J/wNJAQjaqOvw3hgfbN
         5/EEOBbCkF6j35nKQwTz+Gasl1Jy+WNvcFvNLE4XGur7SNTvlZ46FJ39wOta0QstjB7e
         xDfUwSuUSblUMj4RkyqemQTvFefqaFZPwcZTNT6fkf7u94R1GWw4SHknDRyki1QcOKSu
         gmG7UX3h/ek6gQrg/c3XgWmI4P8B5rrpbmO1NUc+CC6PsPFhVVdZC4E6HtcKQ9b4Z4EO
         sVWQ==
X-Gm-Message-State: AFq9FYKbGq5Ao33un/YfyiQGemRRDghdLEMMfPKbEMqgyYx8HpM/sU61
	HxvGSIZA7GD6hrMs5CdzDJo2eKv8xoPWvNO5HMqlvGL+S+McKNjWNhFsx5kCmFzi6z7T7lzZFOL
	zwNRbBM0TWJUVP2ppXacSnxM5n78QgrsynSrnQYYxaQPCuOKd3YcgbuZ4NZeLeMSSCtEf
X-Gm-Gg: AYBFou39rCPiAF9vhuosLeohoR/v3FXlrFwircJQrIdhQCmoUKFXsRmth0KEYTit/wk
	htnpfJ+l+RUtRyB6kHokSc8W4FPFegVfYv2wdSO/xLgYeb1nsII2k/5BsJS+4poCXD2dySsl9PG
	+v4kPueHaris+f6P42c99gOpxgyaryPl3IRmWDzdDW/eD28csQsNPKznN6v8X4afCcrfzvrbzaI
	LZakZiJ3EqMzhIVVpEc/5Gj9vpX4wri9hm0FbRJA5/utS15h9gu9PVZIEcj7J+jcwYXDGFe3BbK
	oLUJOB5m4g+nAFewn2pBB2GkOmDyMa46bK++HkiNhwyhTFE9VcMDc75x35Nn+nGr5NL8dzjt+Up
	u+UpiweQ=
X-Received: by 2002:a05:620a:480a:b0:93a:ec4:e5f2 with SMTP id af79cd13be357-93f57f87853mr518056885a.6.1792591229761;
        Wed, 21 Oct 2026 07:00:29 -0700 (PDT)
X-Received: by 2002:a05:620a:480a:b0:93a:ec4:e5f2 with SMTP id af79cd13be357-93f57f87853mr518034985a.6.1792591228650;
        Wed, 21 Oct 2026 07:00:28 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c468a4ffcc5sm7861166b.26.2026.10.21.07.00.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 07:00:27 -0700 (PDT)
Message-ID: <33d4d460-684b-4031-be45-3768e8d6c092@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 16:00:23 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 12/14] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
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
 <20261011-kaanapali-camss-v21-12-04fd28d815c6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-12-04fd28d815c6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=aI5lOr9m c=1 sm=1 tr=0 ts=6ad8c57f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=RPG6soaBvYURGeOPBHsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 3YlUDB-AGJP73mSEqJ_xiEsDLHIZfaV7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA1NSBTYWx0ZWRfX0EiupWiKp9nr
 wTuNhDoXuNsyptrChZbj7dQ3WTloXLFQuk47ZbsoyLo0ZIXFoJSXBFnnmJbj9jjApKniyYxJ45H
 jipEH1YlnD2e73tB+Q4ox9t1ghOUYCc51YF7qakScHgD3esPkkflU3TFBT7oCojUqdh4g2V/abu
 ejHSkZoVoZJMrJ2idKtelk3PVVi4iR3FvJYdFewRAO+Gr91X9NYJzvVfXndOGyS9vPozm80SfEq
 qZwX9uF9amq6qEkuF93N6aPj7RrwM9HIk1vwpkjpi7T5JHJT3P7jNf4WaT6zjNjfGBxlqk/Gj1E
 uia+uiTanltK44JkicKLFnKouU0FGndpoSnYQN0NLJ9qHGSCkC1n3XXt6+XyEMn7sVDYyvN/+j0
 1nVenxQZiJCfqPiRuZqJPq4Z6yBO8u7EZ6tGnvWyd3fNjys1jwQeumfvQSNEwYL5S+nGJTgRUG9
 svEA3olhp6woJl6aboQ==
X-Proofpoint-GUID: 3YlUDB-AGJP73mSEqJ_xiEsDLHIZfaV7
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA1NSBTYWx0ZWRfX6iNTf4XzcoJf
 ysJfQOgMrsFMLEzBUQKfUX/oHTC2HAhR1WHKTcdACgCFJVZrkVLI6d4YJNYDaf8auimuUa0f0Cw
 SEprxLSxeQwJrwtmUo8wvOhd/AG72aE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_070034_014564_ABE70814 
X-CRM114-Status: UNSURE (   7.28  )
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
> Add the three Camera Control Interface (CCI) controllers present on the
> Kaanapali SoC. Each controller provides two I2C hosts used for camera
> sensor control, so define the controller nodes and their pinctrl states.

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
