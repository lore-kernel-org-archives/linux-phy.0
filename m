Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA1C6EEF320
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 08:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uc2jmkEDUZN/K5W0fXnJnD95uZ+9UGaLQvn9g7M5vDY=; b=V25CQE6Eq/1y5J
	7wBuZ/wa/v0vjfkxinQRHvSAxL21KMtXvfcVDXQ7pWe6ylu7znS7d9uYtD2fai8EA/GLDzIGNPwrA
	lDzbxuPZfFkWKAUxZd6FTzePBo8ropdZGoAS8CYiOnJiaoJfhMJHe5rZnaBZo0N02PEws9K/7IRuO
	PMXzlqOY33kLDvjKDkLMNODjO+5hMIbnEWW7r1wYb5+nAtSLOZ9ZsYckJyob0J2q8rzlPtK6DbvUb
	8JbPwitPeyXyPVCwxT5cRyo0lVmv/egvNuT+rg3D8tEvL7jksiKc/DGJzx0qt6LJFNcjcqlcC1nKB
	lOVkb45Vob8UBPH4m7tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4A5-00000001CvA-1zt8;
	Thu, 05 Mar 2026 08:34:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4A3-00000001Cul-0VXv
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 08:34:24 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6254KVZJ1853178
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 08:34:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xgPF5mrXZiRtnuYdJWQCtfN2
	u5HZVuJy0vAXYlPlAEM=; b=Xd4JtwtLdHzJNx6jwgBDma8S08pljO+QZUHBC5ZU
	oBa6fw9UUF4CjKhDiOiaoFw0jCQ/k5lt97vvbXQGLy0+N+WHz3df9hETcqCiRD/e
	yJDwcU55Vh9oqqlcMjQjCja5Uj5VpYlRVYVHxo0a5c54Klog7JsSGHIJa+eiNUQS
	c81N9RMtl0vOhjKnqy3GYjrWS51eYTPPlm5gi4JtlrQnUSRPWQiOwZe2v4r3yIot
	b2Mu8LSteGMnC2WXfsefE3LCDTH61OWvP1mXN8lxXcdj56ZDyUluSlwJQGpRNp6D
	+MOlsaOeK/L2K87hDA/ZNRraAqfT+8BSuQbXcJAfMm4vnw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq2q80s8p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 08:34:21 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1277896014fso3950759c88.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772699661; x=1773304461; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xgPF5mrXZiRtnuYdJWQCtfN2u5HZVuJy0vAXYlPlAEM=;
        b=ebeMyTu7fMRPlNerkIk+VA/uP6QMz0jJ7yfadHOHf05qkaxQVHTVFlBu3lkx17f4d1
         6klcHMBxFN7IdOd/8wa3lV4tunfZdjfWszyjWKOk97QHFjlB2vSELvkFYq4XylTM1cAJ
         04BNHhtUNKOjIrIrQvRaDifZe7gEetid/94cyJTDrNCrpWzsv120Vhl3Wh1uo/Umbk38
         T+TMA8phCqE3DE21OceFPC7Txq6p0k0ApQZZ/u4TuqDGN1qs1RxEB3Fn+A7NM8W3FhL5
         usqvR3lQO396c7uRpAAU7fsi8pvMemheCUd6awWI7bi8WXtWxgkEYFaORN92HYlGLNge
         7uPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699661; x=1773304461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xgPF5mrXZiRtnuYdJWQCtfN2u5HZVuJy0vAXYlPlAEM=;
        b=v62N7EDfL6mZLDNEQ3W4QXSr+ImikEP29K7c+ojCMXkbJ/ATvLTaehlio3ewgy3BuS
         4YhHQAJgTyKuqkdE1DKYRFvGBasRqV+LIv+J+OsLkLeV08CaO8fKAt/SG/ob7bVKDi43
         YhmwUqMtXkmTAxd64ck8TPWIibpuyHZ94Wapu+QRZlBZtHEYn34AZ37XCyBUF28AIm8j
         WQJITxPT/+ns7iLq0+uR4P6bR3jnOzIyt8bL3W4it8kBClbEic+/1U2IWVIQk4klJEs2
         64lK6zEdkpix8mUidNSILpzZ8YUsCxslhoun3KL1o0jhngpjirJuZ+U76vHJ6wgrzLuy
         1PrA==
X-Forwarded-Encrypted: i=1; AJvYcCUtt3x0wfozu1SzYcHz6DafDklFCHhJzkGH6c+mqr9I8fn3HiEwnajDACWYtXnh1f1rjQvv8OgyX1E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXggjuNdzuGbzQ2rDJKm8wq0VNdIiJH3Zo9N3DJkxTbtJ16nys
	fruZVv1jUto4oba9hauQKrjVvYZDeRjSYzUee2c7PV0PYUxrvvsxJKem+ZvBG3i/CHOuIfnX+Wj
	oFPa5Psujz6b7dvGr+uFYgATcofng207zv9P1jdPg1CkEuOObAhpbG5ci03KN+2sG5BsK
X-Gm-Gg: ATEYQzx318aaBe0wuVBqLMzCdoWIF0QRXHKe43hxUx0mrct7ZlwBZ/YanawMDpif9Xp
	WwzAlIMZETcDNaUuPFkRInJf/NUPuV0Fa2Ra9KYtbXjST6A8y3bdj69o75SJD4qTK8TY3Fr4Fdg
	JcsSF9hfYUKcR2ViuqO/Pa77lGMKkNPerVVmD4RXj/5zlVlpKe5kT/IQK/nQFLV9WO9+zZ4grmY
	9cpxzbUFS4W+AnyL7ePfvVfMb4JHFHcI5cLs7q52stQ9kPnFIpyn18WpkmQp1a6lEl8xig5a5ZJ
	Sy+oCADmaXo/f+KVr9bTTRQtcg5nlAfvRGrdA3N6lpf7I2Jui9mqiEfum6YlvNRKI5lrwRoYutC
	kMCdmO6qyVHIQ4+LMadoUXPYJWsScDVvLhUauLjdAbmYxGcbJHj//J6aUJQrLs6fXaf1G
X-Received: by 2002:a05:7300:6c1f:b0:2ae:5ffa:8da4 with SMTP id 5a478bee46e88-2be30fbca17mr2208188eec.1.1772699661066;
        Thu, 05 Mar 2026 00:34:21 -0800 (PST)
X-Received: by 2002:a05:7300:6c1f:b0:2ae:5ffa:8da4 with SMTP id 5a478bee46e88-2be30fbca17mr2208177eec.1.1772699660514;
        Thu, 05 Mar 2026 00:34:20 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be1281ff70sm9670998eec.14.2026.03.05.00.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:34:20 -0800 (PST)
Date: Thu, 5 Mar 2026 00:34:18 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
Message-ID: <aalACsSBWtiMYacx@hu-qianyu-lv.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
 <duny3mu3vx75m5ik7xkqotdajomkpj5udg7x2gcyj6pho2ybv7@w3q3pru35p45>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <duny3mu3vx75m5ik7xkqotdajomkpj5udg7x2gcyj6pho2ybv7@w3q3pru35p45>
X-Proofpoint-GUID: VC5GGzEkvHafOFv6wXl-jBeYo6jARCph
X-Proofpoint-ORIG-GUID: VC5GGzEkvHafOFv6wXl-jBeYo6jARCph
X-Authority-Analysis: v=2.4 cv=GecaXAXL c=1 sm=1 tr=0 ts=69a9400d cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=-udo5FGDkBk8TPX1unEA:9 a=CjuIK1q_8ugA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA2NyBTYWx0ZWRfXze1EE4Bsm7Jf
 ydHOFHl43Vs8IHrnB+fMuW7851MqMYollKXcaoeSaelBShclXyfd6M8exWNc2+/9aTkAB8d2goV
 JLUmqRungb8ynsiAMmfVMq4UDg9zocBfCvmArz15WQOKYHQjE6Zw3gMVJjK//suXqggwd1d6piD
 O+j8jyUDKLV2bsyq1Qmky7gdYtw56ZvT6Dtcn+9mX+KmpWVtxgxXdsBmVjkEPq7CLBd7o3Z5gRo
 MaLxeurWKrbn7tEThxK2+dX8KmkZwG7UJbNRLjOHaatacJ+cjhj/Is14TLAA06gf+3/PEzB9p3a
 Jouw9xvt0ZGgUwJrYnIYdPqOkMooAv5J6/iJL9ToGAdkXlAQmIo283I5caF2GgoMuv36XrpNYCS
 FIAc2LQqaGwfei4h/L3GSBc0ji13J3g52rGufpTWpRJbR8Ffga+oSrEUO3Ekzdffy7mpOXYFd2F
 Sgwg8H3YfKAglGnhRug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_003423_164836_44530304 
X-CRM114-Status: GOOD (  28.83  )
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

On Thu, Mar 05, 2026 at 01:58:34AM +0200, Dmitry Baryshkov wrote:
> On Wed, Mar 04, 2026 at 12:21:56AM -0800, Qiang Yu wrote:
> > The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs in
> > a bifurcated configuration. Each PHY has its own power domain (phy_gdsc)
> > that must be powered on before initialization per hardware requirements.
> > 
> > Current PHY power management assumes a single power domain per PHY,
> > preventing proper setup for this dual-PHY scenario. Add support for
> > multiple power domains by using devm_pm_domain_attach_list() to attach
> > power domains manually, while maintaining compatibility with single
> > power domain PHYs.
> > 
> > Enable runtime PM to allow power domain control when the PCIe driver
> > calls phy_power_on/phy_power_off:
> > 
> > - Single power domain: QMP PHY platform device directly attaches to
> >   power domain and controls it during runtime resume/suspend
> > - Multiple power domains: devm_pm_domain_attach_list() creates virtual
> >   devices as power domain suppliers, linked to the QMP PHY platform
> >   device as consumer
> > 
> > This ensures power domains are properly attached and turned on/off
> > for both single and multiple power domain configurations.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index fed2fc9bb31108d51f88d34f3379c7744681f485..7369c291be51aa1ad7a330459dcb857f5a1988f6 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -17,6 +17,7 @@
> >  #include <linux/phy/pcie.h>
> >  #include <linux/phy/phy.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/pm_domain.h>
> >  #include <linux/regmap.h>
> >  #include <linux/regulator/consumer.h>
> >  #include <linux/reset.h>
> > @@ -3334,6 +3335,8 @@ struct qmp_pcie {
> >  
> >  	struct clk_fixed_rate pipe_clk_fixed;
> >  	struct clk_fixed_rate aux_clk_fixed;
> > +
> > +	struct dev_pm_domain_list *pd_list;
> >  };
> >  
> >  static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
> > @@ -5348,6 +5351,16 @@ static int qmp_pcie_probe(struct platform_device *pdev)
> >  	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
> >  	WARN_ON_ONCE(!qmp->cfg->phy_status);
> >  
> > +	ret = devm_pm_domain_attach_list(dev, NULL, &qmp->pd_list);
> > +	if (ret < 0 && ret != -EEXIST) {
> > +		dev_err(dev, "Failed to attach power domain\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = devm_pm_runtime_enable(dev);
> > +	if (ret)
> > +		return ret;
> 
> These two should be separate commits.

IIUC, dev_pm_domain_attach_list doesn't turn on power domian during
attaching, which is different to dev_pm_domain_attach called in
platform_probe for single power domain.

- Qiang Yu
> 
> > +
> >  	ret = qmp_pcie_clk_init(qmp);
> >  	if (ret)
> >  		return ret;
> > 
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
