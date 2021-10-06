Return-Path: <SRS0=SQnc=O2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14C88C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 12:58:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C25A8610A1
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 12:58:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C25A8610A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VStI00Gd69ziOnquNRYJIAcErjTqFFDsYmAPT27K3cI=; b=FbNbXMENgLx7sV7aJonwUu7LEM
	DoGpPeimSzI2mO32UiwqfPlUye0WbpGOUnZPe/pxmTG1EfFg8xggYRudB1r5GGjHEY1P0zRlhF0oj
	N49b9kgJ6lo5i4+gCI1M+0KcTtbmuG3ZpLLga4Lenx7waLeIl5Ilycn9TUotrWaafjpl1hfRiiXyK
	uZ7xjAhK8BJZPe1TTo7JTi3jex7+25HT8+80tUh6eN8wTf7oXQfNG4SpyfHQUA5yiPQmxF9wnRZvn
	OWo+MSQk0j/zHOxn3wq3SILVxieY1HZ3w7Utwv3ZmSbK4KFFf35rfpQ+vMIZY7c6Ff0Z1Z9YL23z/
	2WE2Qpvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY6VF-00EIei-Br; Wed, 06 Oct 2021 12:58:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY6VD-00EIdf-1h; Wed, 06 Oct 2021 12:58:32 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1969wYqU030949; 
 Wed, 6 Oct 2021 14:58:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=sIbpiJ+1c+ipZPJBJf/eoX+Er1I0wNZZ3NNHoxo1iHE=;
 b=A3QQAtyk2gQ8aP91HzEXBBKqdnzOXFG/hN4LsJ8HyvmgWGLW0meiq1gIeRgD5W4/SLug
 204m5GgIT0n2WUx9o6W8zjvpcEi+mVM5CQJlktrxdTHOhaD9kBR7JSZpOKupDpeXxE28
 VDtp3M/f2b/EWOhnmdcKFDsA3xUys78wVMBNIJ0jxej2jS5hZQ+JhRCRfs5yg7s+zyC1
 SwFigjesvZGvKjv0U1e91oJmvhb7zk5AJTDrAx9fQhZOSnRfR+Cr/Q5+FNZg25mg5Vj6
 w6n8W1K574JIdPn9oAdb5pVLFWe0+uFXncnPjjAxaRlTggcCTGNXLVk28NPyO60zhSjf 1g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bh9mv1297-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Oct 2021 14:58:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AF93C10002A;
 Wed,  6 Oct 2021 14:58:23 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A74392248CE;
 Wed,  6 Oct 2021 14:58:23 +0200 (CEST)
Received: from lmecxl0995.lme.st.com (10.75.127.50) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 6 Oct
 2021 14:58:22 +0200
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional
 phy tuning properties
To: Rob Herring <robh@kernel.org>
CC: "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, <devicetree@vger.kernel.org>
References: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
 <20211005152453.89330-3-amelie.delaunay@foss.st.com>
 <1633473959.465401.106809.nullmailer@robh.at.kernel.org>
 <491ab475-e7dc-eb71-85aa-6d82543b74db@foss.st.com>
 <CAL_JsqLEPd9_4SgmDh8GakyNxQeuMKhJeGzaLbZSdxDJ_-dZYg@mail.gmail.com>
From: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Message-ID: <2a07f03d-ffaa-77f6-c223-74bae60eb3f1@foss.st.com>
Date: Wed, 6 Oct 2021 14:58:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLEPd9_4SgmDh8GakyNxQeuMKhJeGzaLbZSdxDJ_-dZYg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-06_02,2021-10-06_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_055831_476521_8089A61A 
X-CRM114-Status: GOOD (  13.99  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/6/21 2:38 PM, Rob Herring wrote:
>> Disable child nodes while parent node is already disabled fixes the
>> warning. But it means to add status = "okay"; in child nodes everywhere
>> usbphyc is enabled.
> Presumably, you already have to add phy-supply everywhere.
>  >> Is it normal dtbs_check checks in child nodes when parent node is 
disabled?
> I'll look into doing that.

Should I wait for your potential dtbs_check update or should I disable 
child nodes in .dtsi (and enable them along with parent node in .dts 
using usbphyc) ?

Regards,
Amelie

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
