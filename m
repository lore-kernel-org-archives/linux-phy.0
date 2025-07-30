Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDC4AC87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0ANJiU43f3/NhsRtntx5eh3NhSRy587qWrh9rjknlA=; b=xSRwnyGbsdK7PR
	0X7tkg6Ui07ddohpLZDAM/sH4t/u3IOhu5Quv1z+tBx1HHhF9MBI/2cyzeAJHij3UYqkE8TqEzrUY
	LHVu7mhLnpDVxrMx1aiEfl55ACSXCP3G5MTI9j+ZpVvTuTWPfBAxs06mlDfwzm/0PxpsBbsci74d7
	cMDz8Isoqwg1pi/iXsrolyZQRLkMwbZxc5UyKHhIKKT/bfxH3HOY9+HOLvhDcfNSzFtNNGVGFA8PN
	9CenH6STlB+qC9cRYjG32W4KC3QEQe+e0LmCR0tQgHW9IjXLu1SruG3Lz7rjzfxxs9ZvlN3XUWHYq
	3PSkF3hknQ/QmGvysUjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5yO-00000001TMA-35RR;
	Wed, 30 Jul 2025 12:31:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5V2-00000001PKU-2xyO
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 12:01:37 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U7ILnw019418
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 12:01:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h7P4JA0l+stHfoiUVQyDl4hdUnBTOoJrHehJ6ZePN5w=; b=dCFSCEjR282VRba1
	vkgZOkQcVGAHlpXo9djo/qAV3Vt8gviCpLBq67kVd1XG4YBbsi0ugU8i0psfi98M
	ARdp1Pk5H0Dql9iPnBVv6SKsl1wNL65/OcFamj+KjkVRi5esJ8LtkwS2byolC7zo
	yvcKHpo2YduoRKOMZAJmzHuv1Oc46hy6QeSSaoPoSziKZY76xSbN2KajvmzLv5g8
	ba6ZG7a3ZukeX4YQEiL5qh5aAJ7vp1MlvtmT1DMTWR+1tX+1m+4+VeFGEjYgSdjy
	QjREGi42gSCKQq/FAFo2CL6VAosmOxCNdVifoW7d5m5gCd9huTh+Mj+ipOtIH/Rm
	Gvu4zQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2kjp0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 12:01:35 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-4ecd0d8920eso158483137.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 05:01:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876895; x=1754481695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h7P4JA0l+stHfoiUVQyDl4hdUnBTOoJrHehJ6ZePN5w=;
        b=rvpuAl0empUeB0fK4xoscKJliS9LNSejGwMZ92rN6sMWur4Q7q88k2/zFt88/3uZzS
         sfQEiomH1KXandPO6x0ZZZgQLkx1K+Rda4/yWtz7m7opH2k4QfTkp8/Jj69zu0WW7Nbr
         Hus8mFa2AUb+/XFcDjQB8s07DqmgLAUzniQk8iJWCEfurpe6KXj+TAzGkPJ16NfgAjZ6
         x3+cRxfDT6xOf+lczdViVpxxXwKR46nIG1oJZ322ic1Xb/s3d2ESGZW5g8AroC3DYZfn
         jwnRo/C5I++Kc5vLBYTens8jzBiAOh46Gddt+Z6B9NXQmf7F8CdJGhdIFX9d3ucHwHEe
         iSjA==
X-Forwarded-Encrypted: i=1; AJvYcCVfjbFrVBquYyx6j1iL7MX94hUmxWPEvTPSz2IYxI2vCob6Ygd+X1wq0+BgorN2o8HCIG9IVpxKaQ0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMlRrM8nemc6MiY1uU8GpwH2hLgLQcu4FlGffzxMIe1kZERCYp
	voGMePk2JBpUw1xVP203lno3CHR0Iv2H3jm2oVFNDO+cPBDyPrlTCCP+XkF2ZR+Nj1zXrFaGqTf
	jYcnaQsktNMB1U0FfraKGLXHAnUvn2Wa78ixnbKpN73KQtlAriwHXPAox8Ok8ULjA8vp5
X-Gm-Gg: ASbGncvmdHc5d9eU4+GqXz3V6PmNlH6XQOtj/qhvnp1NOuj/SeTyXwGqOK+75ZKidx5
	S2c/CH+blow3ylhvVjsadvK08JuXP6iuhiyuvSOnrPC5y4lUTQ8nyWuknFAEOKIlyjURVo5dt0I
	uoamnLxk5DMorNa6NP+wMIU9cdvKI65XdUDq4m9Ub7brZzIkFlnjaX056J0jw6xu+1uD3KbwWyJ
	0Indx1tJlsPSq0j5gulEC5YcvEfp/ZbcvKRIdTHOJIQQRzZ2ORKUR0xH/YTbsL0hUPd5uTbRhwt
	shBMqVs37Rdwvx6k5MsdF5peYgOyR8+9gqePNdy5UShZUSsxSMCd9i4bjODmC7ILhN8bzqJMOwL
	r9zNObkPHu5WHD2zU0A==
X-Received: by 2002:a05:6102:5615:b0:4ec:c4fa:c23a with SMTP id ada2fe7eead31-4fbe8743c77mr527578137.1.1753876894205;
        Wed, 30 Jul 2025 05:01:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvqburrLqOLTBhCJ6VDYkYHQwA8Vqi6itxndJTY3cfPYNQiShJQvXD/euk52g60pv2Ga9FOw==
X-Received: by 2002:a05:6102:5615:b0:4ec:c4fa:c23a with SMTP id ada2fe7eead31-4fbe8743c77mr527548137.1.1753876893774;
        Wed, 30 Jul 2025 05:01:33 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61544a81df7sm3572090a12.59.2025.07.30.05.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 05:01:32 -0700 (PDT)
Message-ID: <b99d2b54-b684-4efb-afc7-3a18635fcd5e@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 14:01:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add missing TCSR refclk to the eDP
 PHY
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
 <20250730-phy-qcom-edp-add-missing-refclk-v1-3-6f78afeadbcf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-3-6f78afeadbcf@linaro.org>
X-Proofpoint-GUID: tyTMCoARhMdot6D8kMAQPNlTSvpaHFwc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA4NSBTYWx0ZWRfX9d/0zffsmgcI
 esvVaaD3f/E77NPeXhckM6ZjiCxGWjgGm+glUyrRkzAdWSet1wKm5Ir2h3WnJBvRnzaQ3hzZggW
 DLSZUJD+5Ef+4eYgxYl8nLRzp1RTIn/DaHOfkjHia/RuHRtsSlhZ6IF4ronZPdr+PofCR8v3VhA
 KMSo8/lu+46M776Vx9WNV3fTgplderUXDwOTNaWsVdze+Gg6iEKupxkFwixwPLOov8/eLXiqTxL
 h/AY12XRnVd6TeN/DT2e7LwUQopx2QUYMT6F9LyRH0Fo417Vj9StoATsvXi8NbJoGb2OysiFf8u
 QLBwdDJ3gyx+HzGLKp2Xx6xJTGb45dLL/+isuZMUlUWGBmwkBUlkDEf6rvJ+6+hoXwYUVVJgrG+
 bYiaY3ohX94TEz/fVzDb5AyGuJ5S5D7eIqHxdaZ4KqxEm+DAR5HCb5uw2em7ZwTlMbIv8/hZ
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=688a099f cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=GIX-IF3Huo6piQy2-QAA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: tyTMCoARhMdot6D8kMAQPNlTSvpaHFwc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=800 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_050136_871524_7640FC11 
X-CRM114-Status: GOOD (  10.26  )
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

On 7/30/25 1:46 PM, Abel Vesa wrote:
> The eDP PHY on X1E80100 needs the refclk which is provided
> by the TCSR CC. So add it to the PHY.
> 
> Cc: stable@vger.kernel.org # v6.9
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
